import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobnavWidget extends StatefulWidget {
  const MobnavWidget({
    Key? key,
    this.iconOne,
    this.iconTwo,
    this.iconThree,
    this.textcolour1,
    this.textcolour2,
    this.textcolour3,
    this.homeicon,
    this.hometextcolour,
  }) : super(key: key);

  final Widget? iconOne;
  final Widget? iconTwo;
  final Widget? iconThree;
  final Color? textcolour1;
  final Color? textcolour2;
  final Color? textcolour3;
  final Widget? homeicon;
  final Color? hometextcolour;

  @override
  _MobnavWidgetState createState() => _MobnavWidgetState();
}

class _MobnavWidgetState extends State<MobnavWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 65,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            color: Color(0x33000000),
            offset: Offset(0, 0),
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: InkWell(
              onTap: () async {
                logFirebaseEvent('MOBNAV_COMP_Column_km2x28ud_ON_TAP');
                logFirebaseEvent('Column_Navigate-To');

                context.pushNamed(
                  'Home',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  widget.homeicon!,
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: Text(
                      'Home',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Outfit',
                            fontSize: 10,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () async {
                logFirebaseEvent('MOBNAV_COMP_Column_gjicn5de_ON_TAP');
                logFirebaseEvent('Column_Navigate-To');

                context.pushNamed(
                  'MentorMatch',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  widget.iconTwo!,
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: Text(
                      'Mentor Match',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Outfit',
                            fontSize: 10,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () async {
                logFirebaseEvent('MOBNAV_COMP_Column_9mwn5tzt_ON_TAP');
                logFirebaseEvent('Column_Navigate-To');

                context.pushNamed(
                  'ResearchLearning',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  widget.iconOne!,
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: Text(
                      'Research & Learn',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Outfit',
                            fontSize: 10,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (currentPhoneNumber == '8928073897')
            Expanded(
              child: AuthUserStreamWidget(
                child: InkWell(
                  onTap: () async {
                    logFirebaseEvent('MOBNAV_COMP_Column_8nfhc4u5_ON_TAP');
                    logFirebaseEvent('Column_Navigate-To');

                    context.pushNamed(
                      'MyApplication',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (currentPhoneNumber == '8928073897') widget.iconThree!,
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                        child: Text(
                          'My Applications',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Outfit',
                                    fontSize: 10,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
