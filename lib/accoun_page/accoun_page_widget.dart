import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class AccounPageWidget extends StatefulWidget {
  const AccounPageWidget({Key? key}) : super(key: key);

  @override
  _AccounPageWidgetState createState() => _AccounPageWidgetState();
}

class _AccounPageWidgetState extends State<AccounPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'AccounPage'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'AccounPage',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.white,
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 220,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(1),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 30, 20, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'assets/images/YouLead.club_(2).png',
                                  width: 70,
                                  height: 70,
                                  fit: BoxFit.cover,
                                ),
                                GradientText(
                                  'YouLead Abroad',
                                  style: FlutterFlowTheme.of(context)
                                      .title2
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold,
                                      ),
                                  colors: [
                                    FlutterFlowTheme.of(context).primaryColor,
                                    FlutterFlowTheme.of(context).secondaryColor
                                  ],
                                  gradientDirection: GradientDirection.rtl,
                                  gradientType: GradientType.linear,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 10),
                                  child: InkWell(
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'ACCOUN_PAGE_PAGE_Icon_ux27ym1e_ON_TAP');
                                      logFirebaseEvent('Icon_Navigate-To');

                                      context.pushNamed('Home');
                                    },
                                    child: Icon(
                                      Icons.home,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                      size: 26,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: Text(
                                  'Hi YouLeader - ',
                                  style: FlutterFlowTheme.of(context)
                                      .title1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF8B97A2),
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: AuthUserStreamWidget(
                                  child: Text(
                                    currentUserDisplayName,
                                    style: FlutterFlowTheme.of(context)
                                        .title1
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: Color(0xFFE0E0E0),
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child:
                                    StreamBuilder<List<UsersAdditionalRecord>>(
                                  stream: queryUsersAdditionalRecord(
                                    queryBuilder: (usersAdditionalRecord) =>
                                        usersAdditionalRecord.where('user',
                                            isEqualTo: currentUserReference),
                                    singleRecord: true,
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: CircularProgressIndicator(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                          ),
                                        ),
                                      );
                                    }
                                    List<UsersAdditionalRecord>
                                        textUsersAdditionalRecordList =
                                        snapshot.data!;
                                    // Return an empty Container when the document does not exist.
                                    if (snapshot.data!.isEmpty) {
                                      return Container();
                                    }
                                    final textUsersAdditionalRecord =
                                        textUsersAdditionalRecordList.isNotEmpty
                                            ? textUsersAdditionalRecordList
                                                .first
                                            : null;
                                    return Text(
                                      textUsersAdditionalRecord!.userName!,
                                      style: FlutterFlowTheme.of(context)
                                          .title1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFFE0E0E0),
                                            fontWeight: FontWeight.bold,
                                          ),
                                    );
                                  },
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  logFirebaseEvent(
                                      'ACCOUN_PAGE_PAGE_Icon_tlpaxfvt_ON_TAP');
                                  logFirebaseEvent('Icon_Navigate-To');

                                  context.pushNamed('AddName');
                                },
                                child: Icon(
                                  Icons.mode_edit,
                                  color: Color(0xFF8B97A2),
                                  size: 24,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (currentUserEmail != null &&
                                  currentUserEmail != '')
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 8),
                                  child: Text(
                                    currentUserEmail,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: Color(0xFF8B97A2),
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                            ],
                          ),
                          if (currentPhoneNumber != null &&
                              currentPhoneNumber != '')
                            Align(
                              alignment: AlignmentDirectional(-1, 0),
                              child: AuthUserStreamWidget(
                                child: Text(
                                  currentPhoneNumber,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF8B97A2),
                                        fontSize: 18,
                                      ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              if (currentUserPhoto != null && currentUserPhoto != '')
                AuthUserStreamWidget(
                  child: Container(
                    width: 100,
                    height: 100,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      currentUserPhoto,
                    ),
                  ),
                ),
              if (currentPhoneNumber == '+919930697002')
                AuthUserStreamWidget(
                  child: Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.9, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 10, 0, 10),
                                child: Text(
                                  'YouLead - Activity Score',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ),
                            StreamBuilder<List<ActivityScoreRecord>>(
                              stream: queryActivityScoreRecord(
                                queryBuilder: (activityScoreRecord) =>
                                    activityScoreRecord.where('user',
                                        isEqualTo: currentUserReference),
                                singleRecord: true,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                      ),
                                    ),
                                  );
                                }
                                List<ActivityScoreRecord>
                                    progressBarActivityScoreRecordList =
                                    snapshot.data!;
                                // Return an empty Container when the document does not exist.
                                if (snapshot.data!.isEmpty) {
                                  return Container();
                                }
                                final progressBarActivityScoreRecord =
                                    progressBarActivityScoreRecordList
                                            .isNotEmpty
                                        ? progressBarActivityScoreRecordList
                                            .first
                                        : null;
                                return LinearPercentIndicator(
                                  percent: 1,
                                  width: 120,
                                  lineHeight: 24,
                                  animation: true,
                                  progressColor: FlutterFlowTheme.of(context)
                                      .tertiaryColor,
                                  backgroundColor: Color(0xFF020419),
                                  center: Text(
                                    progressBarActivityScoreRecord!.totalScore!
                                        .toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                        ),
                                  ),
                                  barRadius: Radius.circular(10),
                                  padding: EdgeInsets.zero,
                                );
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Learning\nScore',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                            ),
                            Text(
                              'Accountability\nScore',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                            ),
                            Text(
                              'HIring\nScore',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            StreamBuilder<List<ActivityScoreRecord>>(
                              stream: queryActivityScoreRecord(
                                queryBuilder: (activityScoreRecord) =>
                                    activityScoreRecord.where('user',
                                        isEqualTo: currentUserReference),
                                singleRecord: true,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                      ),
                                    ),
                                  );
                                }
                                List<ActivityScoreRecord>
                                    progressBarActivityScoreRecordList =
                                    snapshot.data!;
                                // Return an empty Container when the document does not exist.
                                if (snapshot.data!.isEmpty) {
                                  return Container();
                                }
                                final progressBarActivityScoreRecord =
                                    progressBarActivityScoreRecordList
                                            .isNotEmpty
                                        ? progressBarActivityScoreRecordList
                                            .first
                                        : null;
                                return CircularPercentIndicator(
                                  percent: 1,
                                  radius: 25,
                                  lineWidth: 24,
                                  animation: true,
                                  progressColor: Color(0xFF572E57),
                                  backgroundColor: Color(0xFFF1F4F8),
                                  center: Text(
                                    progressBarActivityScoreRecord!
                                        .learningScore!
                                        .toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                        ),
                                  ),
                                );
                              },
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                              child: StreamBuilder<List<ActivityScoreRecord>>(
                                stream: queryActivityScoreRecord(
                                  queryBuilder: (activityScoreRecord) =>
                                      activityScoreRecord.where('user',
                                          isEqualTo: currentUserReference),
                                  singleRecord: true,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: CircularProgressIndicator(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                        ),
                                      ),
                                    );
                                  }
                                  List<ActivityScoreRecord>
                                      progressBarActivityScoreRecordList =
                                      snapshot.data!;
                                  // Return an empty Container when the document does not exist.
                                  if (snapshot.data!.isEmpty) {
                                    return Container();
                                  }
                                  final progressBarActivityScoreRecord =
                                      progressBarActivityScoreRecordList
                                              .isNotEmpty
                                          ? progressBarActivityScoreRecordList
                                              .first
                                          : null;
                                  return CircularPercentIndicator(
                                    percent: 1,
                                    radius: 25,
                                    lineWidth: 24,
                                    animation: true,
                                    progressColor: Color(0xFF020419),
                                    backgroundColor: Color(0xFFF1F4F8),
                                    center: Text(
                                      progressBarActivityScoreRecord!
                                          .accountabilityScore!
                                          .toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                          ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            StreamBuilder<List<ActivityScoreRecord>>(
                              stream: queryActivityScoreRecord(
                                queryBuilder: (activityScoreRecord) =>
                                    activityScoreRecord.where('user',
                                        isEqualTo: currentUserReference),
                                singleRecord: true,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                      ),
                                    ),
                                  );
                                }
                                List<ActivityScoreRecord>
                                    progressBarActivityScoreRecordList =
                                    snapshot.data!;
                                // Return an empty Container when the document does not exist.
                                if (snapshot.data!.isEmpty) {
                                  return Container();
                                }
                                final progressBarActivityScoreRecord =
                                    progressBarActivityScoreRecordList
                                            .isNotEmpty
                                        ? progressBarActivityScoreRecordList
                                            .first
                                        : null;
                                return CircularPercentIndicator(
                                  percent: 1,
                                  radius: 25,
                                  lineWidth: 24,
                                  animation: true,
                                  progressColor: Color(0xFF28DFD1),
                                  backgroundColor: Color(0xFFF1F4F8),
                                  center: Text(
                                    progressBarActivityScoreRecord!.hiringScore!
                                        .toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                        ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              shape: BoxShape.rectangle,
                            ),
                            child: InkWell(
                              onTap: () async {
                                logFirebaseEvent(
                                    'ACCOUN_PAGE_PAGE_Row_3gzqaax9_ON_TAP');
                                logFirebaseEvent('Row_Navigate-To');

                                context.pushNamed('AboutYLA');
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24, 0, 0, 0),
                                    child: Text(
                                      'About Us',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: AlignmentDirectional(0.9, 0),
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Color(0xFF95A1AC),
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(0.9, 0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF95A1AC),
                                size: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                              child: InkWell(
                                onTap: () async {
                                  logFirebaseEvent(
                                      'ACCOUN_PAGE_PAGE_Row_w9smbya6_ON_TAP');
                                  logFirebaseEvent('Row_Navigate-To');

                                  context.pushNamed('SavedRead');
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24, 0, 0, 0),
                                      child: Text(
                                        'Saved Reads',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: AlignmentDirectional(0.9, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 5, 0),
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color(0xFF95A1AC),
                                            size: 18,
                                          ),
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
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              shape: BoxShape.rectangle,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              shape: BoxShape.rectangle,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              shape: BoxShape.rectangle,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'ACCOUN_PAGE_PAGE_LOG_OUT_BTN_ON_TAP');
                              logFirebaseEvent('Button_Auth');
                              GoRouter.of(context).prepareAuthEvent();
                              await signOut();

                              context.goNamedAuth('Signin', mounted);
                            },
                            text: 'Log Out',
                            options: FFButtonOptions(
                              width: 90,
                              height: 40,
                              color: Color(0xFFE6275A),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                              elevation: 3,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              if (currentPhoneNumber == '+918861840343')
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                  child: AuthUserStreamWidget(
                    child: InkWell(
                      onTap: () async {
                        logFirebaseEvent(
                            'ACCOUN_PAGE_PAGE_Text_l0mau0ct_ON_TAP');
                        logFirebaseEvent('Text_Navigate-To');

                        context.pushNamed('AddLearningContent');
                      },
                      child: Text(
                        'Creator Mode',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color:
                                  FlutterFlowTheme.of(context).secondaryColor,
                            ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ));
  }
}
