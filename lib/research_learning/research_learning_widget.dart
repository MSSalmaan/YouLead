import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/mobnav_widget.dart';
import '../components/webnav_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ResearchLearningWidget extends StatefulWidget {
  const ResearchLearningWidget({Key? key}) : super(key: key);

  @override
  _ResearchLearningWidgetState createState() => _ResearchLearningWidgetState();
}

class _ResearchLearningWidgetState extends State<ResearchLearningWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'listViewOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 80),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ResearchLearning'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<LearningPostRecord>>(
      stream: queryLearningPostRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).secondaryColor,
              ),
            ),
          );
        }
        List<LearningPostRecord> researchLearningLearningPostRecordList =
            snapshot.data!;
        return Title(
            title: 'ResearchLearning',
            color: FlutterFlowTheme.of(context).primaryColor,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: Colors.white,
              body: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                                child: Container(
                                  width: 400,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'RESEARCH_LEARNING_Image_qio7yo13_ON_TAP');
                                          logFirebaseEvent('Image_Navigate-To');

                                          context.pushNamed('Home');
                                        },
                                        child: Image.asset(
                                          'assets/images/YouLead.club_(2).png',
                                          width: 30,
                                          height: 30,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.4, 0.2),
                                        child: GradientText(
                                          'YouLead Abroad',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .title2
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.white,
                                                fontWeight: FontWeight.w800,
                                              ),
                                          colors: [
                                            FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            FlutterFlowTheme.of(context)
                                                .secondaryColor
                                          ],
                                          gradientDirection:
                                              GradientDirection.rtl,
                                          gradientType: GradientType.linear,
                                        ),
                                      ),
                                      if (responsiveVisibility(
                                        context: context,
                                        tabletLandscape: false,
                                        desktop: false,
                                      ))
                                        Align(
                                          alignment: AlignmentDirectional(0, 0),
                                          child: FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 30,
                                            borderWidth: 1,
                                            buttonSize: 60,
                                            icon: Icon(
                                              Icons.person,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryColor,
                                              size: 24,
                                            ),
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'RESEARCH_LEARNING_PAGE_person_ICN_ON_TAP');
                                              logFirebaseEvent(
                                                  'IconButton_Navigate-To');

                                              context.pushNamed('AccounPage');
                                            },
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                      child: StreamBuilder<List<ApplicationDeadlineRecord>>(
                        stream: queryApplicationDeadlineRecord(),
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
                          List<ApplicationDeadlineRecord>
                              containerApplicationDeadlineRecordList =
                              snapshot.data!;
                          return Container(
                            width: double.infinity,
                            height: double.infinity,
                            constraints: BoxConstraints(
                              maxWidth: 730,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            alignment: AlignmentDirectional(
                                0.050000000000000044, 0.050000000000000044),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: DefaultTabController(
                                length: 5,
                                initialIndex: 0,
                                child: Column(
                                  children: [
                                    TabBar(
                                      isScrollable: true,
                                      labelColor: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      unselectedLabelColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      indicatorColor: Color(0xFFFFBD59),
                                      tabs: [
                                        Tab(
                                          text: 'IELTS',
                                        ),
                                        Tab(
                                          text: 'Scholarship',
                                        ),
                                        Tab(
                                          text: 'SOP/VISA',
                                        ),
                                        Tab(
                                          text: 'Placements',
                                        ),
                                        Tab(
                                          text: 'Application',
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        children: [
                                          StreamBuilder<
                                              List<LearningPostRecord>>(
                                            stream: queryLearningPostRecord(
                                              queryBuilder:
                                                  (learningPostRecord) =>
                                                      learningPostRecord.where(
                                                          'isDay',
                                                          isEqualTo: 4),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child:
                                                        CircularProgressIndicator(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryColor,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<LearningPostRecord>
                                                  listViewLearningPostRecordList =
                                                  snapshot.data!;
                                              if (listViewLearningPostRecordList
                                                  .isEmpty) {
                                                return Image.asset(
                                                  'assets/images/Thursday_-_Future_of_Work.jpg',
                                                  fit: BoxFit.fitHeight,
                                                );
                                              }
                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    listViewLearningPostRecordList
                                                        .length,
                                                itemBuilder:
                                                    (context, listViewIndex) {
                                                  final listViewLearningPostRecord =
                                                      listViewLearningPostRecordList[
                                                          listViewIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 10, 10, 10),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'RESEARCH_LEARNING_Container_qevr0k5o_ON_');
                                                        logFirebaseEvent(
                                                            'Container_Launch-U-R-L');
                                                        await launchURL(
                                                            listViewLearningPostRecord
                                                                .postUrl!);
                                                      },
                                                      child: Container(
                                                        width: 100,
                                                        height: 600,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 8,
                                                              color: Color(
                                                                  0x230F1113),
                                                              offset:
                                                                  Offset(0, 4),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                          shape: BoxShape
                                                              .rectangle,
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          5,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                listViewLearningPostRecord
                                                                    .title!,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .title2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          22,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    listViewLearningPostRecord
                                                                        .author!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ),
                                                                ToggleIcon(
                                                                  onPressed:
                                                                      () async {
                                                                    final userlistElement =
                                                                        currentUserReference;
                                                                    final userlistUpdate = listViewLearningPostRecord
                                                                            .userlist!
                                                                            .toList()
                                                                            .contains(
                                                                                userlistElement)
                                                                        ? FieldValue
                                                                            .arrayRemove([
                                                                            userlistElement
                                                                          ])
                                                                        : FieldValue
                                                                            .arrayUnion([
                                                                            userlistElement
                                                                          ]);
                                                                    final learningPostUpdateData =
                                                                        {
                                                                      'userlist':
                                                                          userlistUpdate,
                                                                    };
                                                                    await listViewLearningPostRecord
                                                                        .reference
                                                                        .update(
                                                                            learningPostUpdateData);
                                                                  },
                                                                  value: listViewLearningPostRecord
                                                                      .userlist!
                                                                      .toList()
                                                                      .contains(
                                                                          currentUserReference),
                                                                  onIcon: Icon(
                                                                    Icons
                                                                        .bookmark_sharp,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryColor,
                                                                    size: 25,
                                                                  ),
                                                                  offIcon: Icon(
                                                                    Icons
                                                                        .bookmark_border,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryColor,
                                                                    size: 25,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            if (listViewLearningPostRecord
                                                                    .isImage ==
                                                                true)
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            10,
                                                                            0,
                                                                            10),
                                                                child: Image
                                                                    .network(
                                                                  listViewLearningPostRecord
                                                                      .image!,
                                                                  width: double
                                                                      .infinity,
                                                                  height: 200,
                                                                  fit: BoxFit
                                                                      .contain,
                                                                ),
                                                              ),
                                                            if (listViewLearningPostRecord
                                                                    .isVideo ==
                                                                true)
                                                              FlutterFlowYoutubePlayer(
                                                                url: listViewLearningPostRecord
                                                                    .videoLink!,
                                                                autoPlay: false,
                                                                looping: true,
                                                                mute: false,
                                                                showControls:
                                                                    true,
                                                                showFullScreen:
                                                                    true,
                                                              ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1, 0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            5,
                                                                            5,
                                                                            0),
                                                                child: Text(
                                                                  listViewLearningPostRecord
                                                                      .miniDescription!,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: Color(
                                                                            0xC9192537),
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                          StreamBuilder<
                                              List<LearningPostRecord>>(
                                            stream: queryLearningPostRecord(
                                              queryBuilder:
                                                  (learningPostRecord) =>
                                                      learningPostRecord.where(
                                                          'isDay',
                                                          isEqualTo: 5),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child:
                                                        CircularProgressIndicator(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryColor,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<LearningPostRecord>
                                                  listViewLearningPostRecordList =
                                                  snapshot.data!;
                                              if (listViewLearningPostRecordList
                                                  .isEmpty) {
                                                return Image.asset(
                                                  'assets/images/Friday_-_How_to_Build_Credibility.jpg',
                                                  fit: BoxFit.fitHeight,
                                                );
                                              }
                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    listViewLearningPostRecordList
                                                        .length,
                                                itemBuilder:
                                                    (context, listViewIndex) {
                                                  final listViewLearningPostRecord =
                                                      listViewLearningPostRecordList[
                                                          listViewIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 10, 10, 10),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'RESEARCH_LEARNING_Container_sc9buyit_ON_');
                                                        logFirebaseEvent(
                                                            'Container_Navigate-To');

                                                        context.pushNamed(
                                                          'LearningArticle',
                                                          queryParams: {
                                                            'learningItem':
                                                                serializeParam(
                                                                    listViewLearningPostRecord,
                                                                    ParamType
                                                                        .Document),
                                                          }.withoutNulls,
                                                          extra: <String,
                                                              dynamic>{
                                                            'learningItem':
                                                                listViewLearningPostRecord,
                                                          },
                                                        );
                                                      },
                                                      child: Container(
                                                        width: 100,
                                                        height: 600,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 8,
                                                              color: Color(
                                                                  0x33000000),
                                                              offset:
                                                                  Offset(0, 4),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          shape: BoxShape
                                                              .rectangle,
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(5,
                                                                      5, 5, 5),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                listViewLearningPostRecord
                                                                    .title!,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .title2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          22,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    listViewLearningPostRecord
                                                                        .author!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                  ToggleIcon(
                                                                    onPressed:
                                                                        () async {
                                                                      final userlistElement =
                                                                          currentUserReference;
                                                                      final userlistUpdate = listViewLearningPostRecord
                                                                              .userlist!
                                                                              .toList()
                                                                              .contains(
                                                                                  userlistElement)
                                                                          ? FieldValue
                                                                              .arrayRemove([
                                                                              userlistElement
                                                                            ])
                                                                          : FieldValue
                                                                              .arrayUnion([
                                                                              userlistElement
                                                                            ]);
                                                                      final learningPostUpdateData =
                                                                          {
                                                                        'userlist':
                                                                            userlistUpdate,
                                                                      };
                                                                      await listViewLearningPostRecord
                                                                          .reference
                                                                          .update(
                                                                              learningPostUpdateData);
                                                                    },
                                                                    value: listViewLearningPostRecord
                                                                        .userlist!
                                                                        .toList()
                                                                        .contains(
                                                                            currentUserReference),
                                                                    onIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .bookmark_sharp,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryColor,
                                                                      size: 25,
                                                                    ),
                                                                    offIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .bookmark_border,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryColor,
                                                                      size: 25,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              if (listViewLearningPostRecord
                                                                      .isImage ==
                                                                  true)
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          10,
                                                                          0,
                                                                          10),
                                                                  child: Image
                                                                      .network(
                                                                    listViewLearningPostRecord
                                                                        .image!,
                                                                    width: double
                                                                        .infinity,
                                                                    height: 200,
                                                                    fit: BoxFit
                                                                        .contain,
                                                                  ),
                                                                ),
                                                              if (listViewLearningPostRecord
                                                                      .isVideo ==
                                                                  true)
                                                                FlutterFlowYoutubePlayer(
                                                                  url: listViewLearningPostRecord
                                                                      .videoLink!,
                                                                  autoPlay:
                                                                      false,
                                                                  looping: true,
                                                                  mute: false,
                                                                  showControls:
                                                                      true,
                                                                  showFullScreen:
                                                                      true,
                                                                ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1, 0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          5,
                                                                          5,
                                                                          0),
                                                                  child: Text(
                                                                    listViewLearningPostRecord
                                                                        .miniDescription!,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              Color(0xC9192537),
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
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
                                          StreamBuilder<
                                              List<LearningPostRecord>>(
                                            stream: queryLearningPostRecord(
                                              queryBuilder:
                                                  (learningPostRecord) =>
                                                      learningPostRecord.where(
                                                          'isDay',
                                                          isEqualTo: 6),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child:
                                                        CircularProgressIndicator(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryColor,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<LearningPostRecord>
                                                  listViewLearningPostRecordList =
                                                  snapshot.data!;
                                              if (listViewLearningPostRecordList
                                                  .isEmpty) {
                                                return Image.asset(
                                                  'assets/images/Saturday_-_why_curated_Content.jpg',
                                                  fit: BoxFit.fitHeight,
                                                );
                                              }
                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    listViewLearningPostRecordList
                                                        .length,
                                                itemBuilder:
                                                    (context, listViewIndex) {
                                                  final listViewLearningPostRecord =
                                                      listViewLearningPostRecordList[
                                                          listViewIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 10, 10, 10),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'RESEARCH_LEARNING_Container_zny8e7t0_ON_');
                                                        logFirebaseEvent(
                                                            'Container_Navigate-To');

                                                        context.pushNamed(
                                                          'LearningArticle',
                                                          queryParams: {
                                                            'learningItem':
                                                                serializeParam(
                                                                    listViewLearningPostRecord,
                                                                    ParamType
                                                                        .Document),
                                                          }.withoutNulls,
                                                          extra: <String,
                                                              dynamic>{
                                                            'learningItem':
                                                                listViewLearningPostRecord,
                                                          },
                                                        );
                                                      },
                                                      child: Container(
                                                        width: 100,
                                                        height: 600,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 4,
                                                              color: Color(
                                                                  0x33000000),
                                                              offset:
                                                                  Offset(0, 2),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          shape: BoxShape
                                                              .rectangle,
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(5,
                                                                      5, 5, 5),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                listViewLearningPostRecord
                                                                    .title!,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .title2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          22,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    listViewLearningPostRecord
                                                                        .author!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                  ToggleIcon(
                                                                    onPressed:
                                                                        () async {
                                                                      final userlistElement =
                                                                          currentUserReference;
                                                                      final userlistUpdate = listViewLearningPostRecord
                                                                              .userlist!
                                                                              .toList()
                                                                              .contains(
                                                                                  userlistElement)
                                                                          ? FieldValue
                                                                              .arrayRemove([
                                                                              userlistElement
                                                                            ])
                                                                          : FieldValue
                                                                              .arrayUnion([
                                                                              userlistElement
                                                                            ]);
                                                                      final learningPostUpdateData =
                                                                          {
                                                                        'userlist':
                                                                            userlistUpdate,
                                                                      };
                                                                      await listViewLearningPostRecord
                                                                          .reference
                                                                          .update(
                                                                              learningPostUpdateData);
                                                                    },
                                                                    value: listViewLearningPostRecord
                                                                        .userlist!
                                                                        .toList()
                                                                        .contains(
                                                                            currentUserReference),
                                                                    onIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .bookmark_sharp,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryColor,
                                                                      size: 25,
                                                                    ),
                                                                    offIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .bookmark_border,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryColor,
                                                                      size: 25,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              if (listViewLearningPostRecord
                                                                      .isImage ==
                                                                  true)
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          10,
                                                                          0,
                                                                          10),
                                                                  child: Image
                                                                      .network(
                                                                    listViewLearningPostRecord
                                                                        .image!,
                                                                    width: double
                                                                        .infinity,
                                                                    height: 200,
                                                                    fit: BoxFit
                                                                        .contain,
                                                                  ),
                                                                ),
                                                              if (listViewLearningPostRecord
                                                                      .isVideo ==
                                                                  true)
                                                                FlutterFlowYoutubePlayer(
                                                                  url: listViewLearningPostRecord
                                                                      .videoLink!,
                                                                  autoPlay:
                                                                      false,
                                                                  looping: true,
                                                                  mute: false,
                                                                  showControls:
                                                                      true,
                                                                  showFullScreen:
                                                                      true,
                                                                ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1, 0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          5,
                                                                          5,
                                                                          0),
                                                                  child: Text(
                                                                    listViewLearningPostRecord
                                                                        .miniDescription!,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              Color(0xC9192537),
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
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
                                          StreamBuilder<
                                              List<LearningPostRecord>>(
                                            stream: queryLearningPostRecord(
                                              queryBuilder:
                                                  (learningPostRecord) =>
                                                      learningPostRecord.where(
                                                          'isDay',
                                                          isEqualTo: 7),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child:
                                                        CircularProgressIndicator(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryColor,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<LearningPostRecord>
                                                  listViewLearningPostRecordList =
                                                  snapshot.data!;
                                              if (listViewLearningPostRecordList
                                                  .isEmpty) {
                                                return Image.asset(
                                                  'assets/images/Sunday_-_Why_YouLeader.jpg',
                                                  fit: BoxFit.fitHeight,
                                                );
                                              }
                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    listViewLearningPostRecordList
                                                        .length,
                                                itemBuilder:
                                                    (context, listViewIndex) {
                                                  final listViewLearningPostRecord =
                                                      listViewLearningPostRecordList[
                                                          listViewIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 10, 10, 10),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'RESEARCH_LEARNING_Container_3w1uvswi_ON_');
                                                        logFirebaseEvent(
                                                            'Container_Navigate-To');

                                                        context.pushNamed(
                                                          'LearningArticle',
                                                          queryParams: {
                                                            'learningItem':
                                                                serializeParam(
                                                                    listViewLearningPostRecord,
                                                                    ParamType
                                                                        .Document),
                                                          }.withoutNulls,
                                                          extra: <String,
                                                              dynamic>{
                                                            'learningItem':
                                                                listViewLearningPostRecord,
                                                          },
                                                        );
                                                      },
                                                      child: Container(
                                                        width: 100,
                                                        height: 600,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 8,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .lineColor,
                                                              offset:
                                                                  Offset(0, 4),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          shape: BoxShape
                                                              .rectangle,
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(5,
                                                                      5, 5, 0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                listViewLearningPostRecord
                                                                    .title!,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .title2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          22,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    listViewLearningPostRecord
                                                                        .author!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                  ToggleIcon(
                                                                    onPressed:
                                                                        () async {
                                                                      final userlistElement =
                                                                          currentUserReference;
                                                                      final userlistUpdate = listViewLearningPostRecord
                                                                              .userlist!
                                                                              .toList()
                                                                              .contains(
                                                                                  userlistElement)
                                                                          ? FieldValue
                                                                              .arrayRemove([
                                                                              userlistElement
                                                                            ])
                                                                          : FieldValue
                                                                              .arrayUnion([
                                                                              userlistElement
                                                                            ]);
                                                                      final learningPostUpdateData =
                                                                          {
                                                                        'userlist':
                                                                            userlistUpdate,
                                                                      };
                                                                      await listViewLearningPostRecord
                                                                          .reference
                                                                          .update(
                                                                              learningPostUpdateData);
                                                                    },
                                                                    value: listViewLearningPostRecord
                                                                        .userlist!
                                                                        .toList()
                                                                        .contains(
                                                                            currentUserReference),
                                                                    onIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .bookmark_sharp,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryColor,
                                                                      size: 25,
                                                                    ),
                                                                    offIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .bookmark_border,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryColor,
                                                                      size: 25,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              if (listViewLearningPostRecord
                                                                      .isImage ==
                                                                  true)
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          10,
                                                                          0,
                                                                          10),
                                                                  child: Image
                                                                      .network(
                                                                    listViewLearningPostRecord
                                                                        .image!,
                                                                    width: double
                                                                        .infinity,
                                                                    height: 200,
                                                                    fit: BoxFit
                                                                        .contain,
                                                                  ),
                                                                ),
                                                              if (listViewLearningPostRecord
                                                                      .isVideo ==
                                                                  true)
                                                                FlutterFlowYoutubePlayer(
                                                                  url: listViewLearningPostRecord
                                                                      .videoLink!,
                                                                  autoPlay:
                                                                      false,
                                                                  looping: true,
                                                                  mute: false,
                                                                  showControls:
                                                                      true,
                                                                  showFullScreen:
                                                                      true,
                                                                ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1, 0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          5,
                                                                          5,
                                                                          0),
                                                                  child: Text(
                                                                    listViewLearningPostRecord
                                                                        .miniDescription!,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              Color(0xC9192537),
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
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
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.05, 0.05),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 2),
                                                    child: StreamBuilder<
                                                        List<
                                                            CollegeListRecord>>(
                                                      stream:
                                                          queryCollegeListRecord(),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50,
                                                              height: 50,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryColor,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<CollegeListRecord>
                                                            verticalListCollegeListRecordList =
                                                            snapshot.data!;
                                                        return ListView.builder(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              verticalListCollegeListRecordList
                                                                  .length,
                                                          itemBuilder: (context,
                                                              verticalListIndex) {
                                                            final verticalListCollegeListRecord =
                                                                verticalListCollegeListRecordList[
                                                                    verticalListIndex];
                                                            return Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          8,
                                                                          16,
                                                                          8),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          8,
                                                                      color: Color(
                                                                          0x230F1113),
                                                                      offset:
                                                                          Offset(
                                                                              0,
                                                                              4),
                                                                    )
                                                                  ],
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12),
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Hero(
                                                                      tag: verticalListCollegeListRecord
                                                                          .collegepic!,
                                                                      transitionOnUserGestures:
                                                                          true,
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(0),
                                                                          topLeft:
                                                                              Radius.circular(12),
                                                                          topRight:
                                                                              Radius.circular(12),
                                                                        ),
                                                                        child: Image
                                                                            .network(
                                                                          verticalListCollegeListRecord
                                                                              .collegepic!,
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              200,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              16,
                                                                              12,
                                                                              16,
                                                                              12),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                                                    child: Text(
                                                                                      verticalListCollegeListRecord.collegeRankingTimes!.toString(),
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            fontSize: 18,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Text(
                                                                                    verticalListCollegeListRecord.collegeName!.maybeHandleOverflow(maxChars: 20),
                                                                                    maxLines: 2,
                                                                                    style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                          fontFamily: 'Outfit',
                                                                                          color: Color(0xFF1D2429),
                                                                                          fontSize: 18,
                                                                                          fontWeight: FontWeight.bold,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(0, 0.05),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                                                        child: Text(
                                                                                          verticalListCollegeListRecord.collegeCountry!,
                                                                                          style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                fontFamily: 'Outfit',
                                                                                                color: Color(0xFF57636C),
                                                                                                fontSize: 14,
                                                                                                fontWeight: FontWeight.bold,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                      Text(
                                                                                        'Deadline - ',
                                                                                        style: FlutterFlowTheme.of(context).bodyText1,
                                                                                      ),
                                                                                      Text(
                                                                                        dateTimeFormat('yMMMd', verticalListCollegeListRecord.applicationDeadline!),
                                                                                        style: FlutterFlowTheme.of(context).bodyText1,
                                                                                      ),
                                                                                      ToggleIcon(
                                                                                        onPressed: () async {
                                                                                          final userlistElement = verticalListCollegeListRecord.user;
                                                                                          final userlistUpdate = verticalListCollegeListRecord.userlist!.toList().contains(userlistElement) ? FieldValue.arrayRemove([userlistElement]) : FieldValue.arrayUnion([userlistElement]);
                                                                                          final collegeListUpdateData = {
                                                                                            'userlist': userlistUpdate,
                                                                                          };
                                                                                          await verticalListCollegeListRecord.reference.update(collegeListUpdateData);
                                                                                        },
                                                                                        value: verticalListCollegeListRecord.userlist!.toList().contains(verticalListCollegeListRecord.user),
                                                                                        onIcon: Icon(
                                                                                          Icons.bookmark_sharp,
                                                                                          color: FlutterFlowTheme.of(context).secondaryColor,
                                                                                          size: 25,
                                                                                        ),
                                                                                        offIcon: Icon(
                                                                                          Icons.bookmark_border,
                                                                                          color: FlutterFlowTheme.of(context).secondaryColor,
                                                                                          size: 25,
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).animated([
                                                          animationsMap[
                                                              'listViewOnPageLoadAnimation']!
                                                        ]);
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  if (responsiveVisibility(
                    context: context,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Align(
                      alignment: AlignmentDirectional(0, 1),
                      child: MobnavWidget(
                        iconOne: Icon(
                          Icons.library_books,
                          color: FlutterFlowTheme.of(context).secondaryColor,
                        ),
                        iconTwo: Icon(
                          Icons.people_outlined,
                        ),
                        iconThree: Icon(
                          Icons.app_registration,
                        ),
                        textcolour1: Color(0xFFE6275A),
                        textcolour2: FlutterFlowTheme.of(context).primaryText,
                        textcolour3: FlutterFlowTheme.of(context).primaryText,
                        homeicon: Icon(
                          Icons.home,
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                        hometextcolour:
                            FlutterFlowTheme.of(context).primaryText,
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                    WebnavWidget(
                      iconOne: Icon(
                        Icons.library_books,
                        color: FlutterFlowTheme.of(context).secondaryColor,
                      ),
                      iconTwo: Icon(
                        Icons.people,
                      ),
                      iconThree: Icon(
                        Icons.app_registration,
                      ),
                      textcolour1: FlutterFlowTheme.of(context).secondaryColor,
                      textcolour2: FlutterFlowTheme.of(context).primaryText,
                      textcolour3: FlutterFlowTheme.of(context).primaryText,
                      textcolour4: FlutterFlowTheme.of(context).primaryText,
                      iconFour: Icon(
                        Icons.account_circle_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
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
            ));
      },
    );
  }
}
