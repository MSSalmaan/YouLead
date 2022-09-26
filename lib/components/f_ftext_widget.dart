import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FFtextWidget extends StatefulWidget {
  const FFtextWidget({Key? key}) : super(key: key);

  @override
  _FFtextWidgetState createState() => _FFtextWidgetState();
}

class _FFtextWidgetState extends State<FFtextWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 1100,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 100),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10, 12, 10, 120),
      child: Text(
        'Building For A Community of Ambitious & Determined Professionals',
        textAlign: TextAlign.center,
        style: FlutterFlowTheme.of(context).bodyText2.override(
              fontFamily: 'Montserrat',
              color: Color(0xFF8B97A2),
              fontSize: 14,
            ),
      ).animated([animationsMap['textOnPageLoadAnimation']!]),
    );
  }
}
