import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _UserScore = prefs.getInt('ff_UserScore') ?? _UserScore;
    _IsDark = prefs.getBool('ff_IsDark') ?? _IsDark;
  }

  late SharedPreferences prefs;

  String Language = 'English';

  bool Read = true;

  int _UserScore = 0;
  int get UserScore => _UserScore;
  set UserScore(int _value) {
    _UserScore = _value;
    prefs.setInt('ff_UserScore', _value);
  }

  bool _IsDark = false;
  bool get IsDark => _IsDark;
  set IsDark(bool _value) {
    _IsDark = _value;
    prefs.setBool('ff_IsDark', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
