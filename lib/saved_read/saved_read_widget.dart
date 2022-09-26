import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SavedReadWidget extends StatefulWidget {
  const SavedReadWidget({Key? key}) : super(key: key);

  @override
  _SavedReadWidgetState createState() => _SavedReadWidgetState();
}

class _SavedReadWidgetState extends State<SavedReadWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'SavedRead'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'SavedRead',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                    child: StreamBuilder<List<LearningPostRecord>>(
                      stream: queryLearningPostRecord(
                        queryBuilder: (learningPostRecord) =>
                            learningPostRecord.where('userlist',
                                arrayContains: currentUserReference),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                              ),
                            ),
                          );
                        }
                        List<LearningPostRecord>
                            listViewLearningPostRecordList = snapshot.data!;
                        if (listViewLearningPostRecordList.isEmpty) {
                          return Image.network(
                            'https://iso.500px.com/wp-content/uploads/2015/07/maxcover.jpeg',
                            fit: BoxFit.fitHeight,
                          );
                        }
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewLearningPostRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewLearningPostRecord =
                                listViewLearningPostRecordList[listViewIndex];
                            return Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                              child: InkWell(
                                onTap: () async {
                                  logFirebaseEvent(
                                      'SAVED_READ_Container_qogw6heo_ON_TAP');
                                  logFirebaseEvent('Container_Navigate-To');

                                  context.pushNamed(
                                    'LearningArticle',
                                    queryParams: {
                                      'learningItem': serializeParam(
                                          listViewLearningPostRecord,
                                          ParamType.Document),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      'learningItem':
                                          listViewLearningPostRecord,
                                    },
                                  );
                                },
                                child: Container(
                                  width: 100,
                                  height: 600,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: Color(0xE3FFFFFF),
                                      width: 5,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        listViewLearningPostRecord.title!,
                                        style: FlutterFlowTheme.of(context)
                                            .title2
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            listViewLearningPostRecord.author!,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText2
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          ToggleIcon(
                                            onPressed: () async {
                                              final userlistElement =
                                                  currentUserReference;
                                              final userlistUpdate =
                                                  listViewLearningPostRecord
                                                          .userlist!
                                                          .toList()
                                                          .contains(
                                                              userlistElement)
                                                      ? FieldValue.arrayRemove(
                                                          [userlistElement])
                                                      : FieldValue.arrayUnion(
                                                          [userlistElement]);
                                              final learningPostUpdateData = {
                                                'userlist': userlistUpdate,
                                              };
                                              await listViewLearningPostRecord
                                                  .reference
                                                  .update(
                                                      learningPostUpdateData);
                                            },
                                            value: listViewLearningPostRecord
                                                .userlist!
                                                .toList()
                                                .contains(currentUserReference),
                                            onIcon: Icon(
                                              Icons.bookmark_sharp,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryColor,
                                              size: 25,
                                            ),
                                            offIcon: Icon(
                                              Icons.bookmark_border,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryColor,
                                              size: 25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      if (listViewLearningPostRecord.isImage ==
                                          true)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 10, 0, 10),
                                          child: Image.network(
                                            listViewLearningPostRecord.image!,
                                            width: double.infinity,
                                            height: 200,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      if (listViewLearningPostRecord.isVideo ==
                                          true)
                                        FlutterFlowYoutubePlayer(
                                          url: listViewLearningPostRecord
                                              .videoLink!,
                                          autoPlay: false,
                                          looping: true,
                                          mute: false,
                                          showControls: true,
                                          showFullScreen: true,
                                        ),
                                      Align(
                                        alignment: AlignmentDirectional(-1, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 5, 0, 0),
                                          child: Text(
                                            listViewLearningPostRecord
                                                .miniDescription!,
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText2
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontWeight: FontWeight.w500,
                                                  lineHeight: 1.5,
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
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryColor,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-0.4, 0.2),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(3, 0, 0, 5),
                              child: Text(
                                'Saved Reads',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontSize: 20,
                                    ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(70, 0, 0, 0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              borderWidth: 1,
                              buttonSize: 60,
                              icon: Icon(
                                Icons.arrow_back_outlined,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                size: 24,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'SAVED_READ_arrow_back_outlined_ICN_ON_TA');
                                logFirebaseEvent('IconButton_Navigate-Back');
                                context.pop();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
