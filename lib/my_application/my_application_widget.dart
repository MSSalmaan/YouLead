import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/mobnav_widget.dart';
import '../components/webnav_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApplicationWidget extends StatefulWidget {
  const MyApplicationWidget({Key? key}) : super(key: key);

  @override
  _MyApplicationWidgetState createState() => _MyApplicationWidgetState();
}

class _MyApplicationWidgetState extends State<MyApplicationWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'MyApplication'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'MyApplication',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.white,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      constraints: BoxConstraints(
                        maxWidth: 720,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        'assets/images/YouLead.club_(2).png',
                                        width: 30,
                                        height: 30,
                                        fit: BoxFit.cover,
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-0.4, 0.2),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(3, 0, 0, 5),
                                              child: Text(
                                                'Hey, YouLeader ',
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryColor,
                                                          fontSize: 16,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          AuthUserStreamWidget(
                                            child: Text(
                                              currentUserDisplayName,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryColor,
                                                        fontSize: 16,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30,
                                        borderWidth: 1,
                                        buttonSize: 60,
                                        icon: Icon(
                                          Icons.list,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                          size: 24,
                                        ),
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'MY_APPLICATION_PAGE_list_ICN_ON_TAP');
                                          logFirebaseEvent(
                                              'IconButton_Navigate-To');

                                          context.pushNamed('AccounPage');
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Achievements',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4, 5, 0, 5),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'MY_APPLICATION_PAGE_ADD_S_O_P_BTN_ON_TAP');
                                      logFirebaseEvent('Button_Navigate-To');

                                      context.pushNamed('Add_Achievement');
                                    },
                                    text: 'Add SOP',
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 30,
                                      color: Color(0xFFE6275A),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: StreamBuilder<List<AchievementsRecord>>(
                              stream: queryAchievementsRecord(
                                queryBuilder: (achievementsRecord) =>
                                    achievementsRecord.where('user',
                                        isEqualTo: currentUserReference),
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
                                List<AchievementsRecord>
                                    listViewAchievementsRecordList =
                                    snapshot.data!;
                                if (listViewAchievementsRecordList.isEmpty) {
                                  return Image.asset(
                                    'assets/images/EE6CA1E3-7275-443A-80FE-34390D24C4B3.jpeg',
                                  );
                                }
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.horizontal,
                                  itemCount:
                                      listViewAchievementsRecordList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewAchievementsRecord =
                                        listViewAchievementsRecordList[
                                            listViewIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 5, 5),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 100,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Container(
                                          width: 300,
                                          height: 200,
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                              )
                                            ],
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xFF4A3D50),
                                                Color(0xFF465F62),
                                                Color(0xFF565547)
                                              ],
                                              stops: [0, 0.5, 1],
                                              begin:
                                                  AlignmentDirectional(1, 0.77),
                                              end: AlignmentDirectional(
                                                  -1, -0.77),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                              color: Color(0xFFA8DBF0),
                                              width: 2,
                                            ),
                                          ),
                                          child: InkWell(
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'MY_APPLICATION_Column_wzhclll3_ON_TAP');
                                              logFirebaseEvent(
                                                  'Column_Navigate-To');

                                              context.pushNamed(
                                                'AchievementPage',
                                                queryParams: {
                                                  'achievementItem': serializeParam(
                                                      listViewAchievementsRecord,
                                                      ParamType.Document),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  'achievementItem':
                                                      listViewAchievementsRecord,
                                                },
                                              );
                                            },
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 5, 0, 0),
                                                    child: Text(
                                                      listViewAchievementsRecord
                                                          .achMonth!,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyText1
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Color(
                                                                0xFFE0E0E0),
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.95, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 5, 0, 0),
                                                      child: Text(
                                                        'Goals for the Month',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.95, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5, 0, 0, 0),
                                                      child: Text(
                                                        listViewAchievementsRecord
                                                            .achObjective!,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.95, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 5, 0, 0),
                                                      child: Text(
                                                        'Key Outcomes',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.95, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5, 0, 0, 10),
                                                      child: AutoSizeText(
                                                        listViewAchievementsRecord
                                                            .achOutcome!,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Books you read',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4, 5, 0, 5),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'MY_APPLICATION_ESSAY_ANSWERS_BTN_ON_TAP');
                                      logFirebaseEvent('Button_Navigate-To');

                                      context.pushNamed('Add_book_read');
                                    },
                                    text: 'Essay Answers',
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 30,
                                      color: Color(0xFFE6275A),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: StreamBuilder<List<BooksRecord>>(
                              stream: queryBooksRecord(
                                queryBuilder: (booksRecord) =>
                                    booksRecord.where('user',
                                        isEqualTo: currentUserReference),
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
                                List<BooksRecord> listViewBooksRecordList =
                                    snapshot.data!;
                                if (listViewBooksRecordList.isEmpty) {
                                  return Image.asset(
                                    'assets/images/9C82668F-F84A-4544-8D1C-90A6073E0A2C.jpeg',
                                  );
                                }
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: listViewBooksRecordList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewBooksRecord =
                                        listViewBooksRecordList[listViewIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 5, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'MY_APPLICATION_Container_ecey4jtw_ON_TAP');
                                          logFirebaseEvent(
                                              'Container_Navigate-To');

                                          context.pushNamed(
                                            'Book_Page',
                                            queryParams: {
                                              'bookItem': serializeParam(
                                                  listViewBooksRecord,
                                                  ParamType.Document),
                                            }.withoutNulls,
                                            extra: <String, dynamic>{
                                              'bookItem': listViewBooksRecord,
                                            },
                                          );
                                        },
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 100,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Container(
                                            width: 150,
                                            constraints: BoxConstraints(
                                              maxHeight: 10,
                                            ),
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color(0xFF032045),
                                                  Color(0xFF0C2A45),
                                                  Color(0xFF020419)
                                                ],
                                                stops: [0, 0.5, 1],
                                                begin:
                                                    AlignmentDirectional(1, -1),
                                                end:
                                                    AlignmentDirectional(-1, 1),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryColor,
                                                width: 2,
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 5, 0, 10),
                                                  child: Text(
                                                    listViewBooksRecord
                                                        .bookTitle!,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFFEAF3F3),
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Thought Leadership',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4, 5, 0, 5),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'MY_APPLICATION_PAGE_ADD_L_O_R_BTN_ON_TAP');
                                      logFirebaseEvent('Button_Navigate-To');

                                      context
                                          .pushNamed('Add_ThoughtLeadership');
                                    },
                                    text: 'Add LOR',
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 30,
                                      color: Color(0xFFE6275A),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: StreamBuilder<List<ThoughtleadershipRecord>>(
                              stream: queryThoughtleadershipRecord(
                                queryBuilder: (thoughtleadershipRecord) =>
                                    thoughtleadershipRecord.where('user',
                                        isEqualTo: currentUserReference),
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
                                List<ThoughtleadershipRecord>
                                    listViewThoughtleadershipRecordList =
                                    snapshot.data!;
                                if (listViewThoughtleadershipRecordList
                                    .isEmpty) {
                                  return Image.asset(
                                    'assets/images/25B207D2-2E42-4B0B-871B-C07CF97F61F8_4_5005_c.jpeg',
                                  );
                                }
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: listViewThoughtleadershipRecordList
                                      .length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewThoughtleadershipRecord =
                                        listViewThoughtleadershipRecordList[
                                            listViewIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 5, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'MY_APPLICATION_Container_3hve5mxw_ON_TAP');
                                          logFirebaseEvent(
                                              'Container_Navigate-To');

                                          context.pushNamed(
                                            'ThoughtLeader_Page',
                                            queryParams: {
                                              'tlItem': serializeParam(
                                                  listViewThoughtleadershipRecord,
                                                  ParamType.Document),
                                            }.withoutNulls,
                                            extra: <String, dynamic>{
                                              'tlItem':
                                                  listViewThoughtleadershipRecord,
                                            },
                                          );
                                        },
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 100,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Container(
                                            width: 200,
                                            decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiaryColor,
                                                )
                                              ],
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color(0xFF1F2534),
                                                  Color(0xFF29202F),
                                                  Color(0xFF2A212E)
                                                ],
                                                stops: [0.2, 0.7, 1],
                                                begin: AlignmentDirectional(
                                                    0.5, -1),
                                                end: AlignmentDirectional(
                                                    -0.5, 1),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color: Color(0xFFE0E0E0),
                                                width: 2,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 5, 0, 0),
                                              child: InkWell(
                                                onTap: () async {
                                                  logFirebaseEvent(
                                                      'MY_APPLICATION_Column_n8g6tr5r_ON_TAP');
                                                  logFirebaseEvent(
                                                      'Column_Navigate-To');

                                                  context.pushNamed(
                                                      'AchievementPage');
                                                },
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5, 5, 0, 0),
                                                      child: Text(
                                                        listViewThoughtleadershipRecord
                                                            .tLTitle!,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 5, 0, 0),
                                                      child: Text(
                                                        'Area',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -0.95, 0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(5, 0,
                                                                    0, 10),
                                                        child: Text(
                                                          listViewThoughtleadershipRecord
                                                              .tLSubjectArea!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          if (responsiveVisibility(
                            context: context,
                            tabletLandscape: false,
                            desktop: false,
                          ))
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: MobnavWidget(
                                iconOne: Icon(
                                  Icons.library_books_outlined,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                                iconTwo: Icon(
                                  Icons.people_outline_sharp,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                                iconThree: Icon(
                                  Icons.app_registration,
                                  color: Color(0xFFE6275A),
                                ),
                                textcolour1:
                                    FlutterFlowTheme.of(context).primaryText,
                                textcolour2:
                                    FlutterFlowTheme.of(context).primaryText,
                                textcolour3: Color(0xFFE6275A),
                                homeicon: Icon(
                                  Icons.home,
                                ),
                                hometextcolour:
                                    FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                    WebnavWidget(
                      iconOne: Icon(
                        Icons.library_books_outlined,
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                      iconTwo: Icon(
                        Icons.people_outlined,
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                      iconThree: Icon(
                        Icons.app_registration,
                        color: FlutterFlowTheme.of(context).secondaryColor,
                      ),
                      textcolour1: FlutterFlowTheme.of(context).primaryText,
                      textcolour2: FlutterFlowTheme.of(context).primaryText,
                      textcolour3: FlutterFlowTheme.of(context).secondaryColor,
                      textcolour4: FlutterFlowTheme.of(context).primaryText,
                      iconFour: Icon(
                        Icons.account_circle_outlined,
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                      bg1: Colors.white,
                      bg2: Colors.white,
                      bg3: Colors.white,
                      bg4: Colors.white,
                      homebg: FlutterFlowTheme.of(context).primaryBackground,
                      homeicon: Icon(
                        Icons.home,
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                      hometextcolor: FlutterFlowTheme.of(context).primaryText,
                    ),
                ],
              ),
            ),
          ),
        ));
  }
}
