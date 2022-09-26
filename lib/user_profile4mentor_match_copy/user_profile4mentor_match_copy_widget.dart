import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfile4mentorMatchCopyWidget extends StatefulWidget {
  const UserProfile4mentorMatchCopyWidget({Key? key}) : super(key: key);

  @override
  _UserProfile4mentorMatchCopyWidgetState createState() =>
      _UserProfile4mentorMatchCopyWidgetState();
}

class _UserProfile4mentorMatchCopyWidgetState
    extends State<UserProfile4mentorMatchCopyWidget> {
  DateTime? datePicked1;
  TextEditingController? userNameController;
  String? hometownselectValue;
  String? collegeNameValue;
  String? degreeValue;
  DateTime? datePicked2;
  String? specializationValue;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'UserProfile4mentor_matchCopy'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    userNameController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UsersAdditionalRecord>>(
      stream: queryUsersAdditionalRecord(
        queryBuilder: (usersAdditionalRecord) => usersAdditionalRecord
            .where('user', isEqualTo: currentUserReference),
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
                color: FlutterFlowTheme.of(context).secondaryColor,
              ),
            ),
          );
        }
        List<UsersAdditionalRecord>
            userProfile4mentorMatchCopyUsersAdditionalRecordList =
            snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final userProfile4mentorMatchCopyUsersAdditionalRecord =
            userProfile4mentorMatchCopyUsersAdditionalRecordList.isNotEmpty
                ? userProfile4mentorMatchCopyUsersAdditionalRecordList.first
                : null;
        return Title(
            title: 'UserProfile4mentor_matchCopy',
            color: FlutterFlowTheme.of(context).primaryColor,
            child: Scaffold(
              key: scaffoldKey,
              appBar: AppBar(
                backgroundColor: Colors.white,
                automaticallyImplyLeading: false,
                title: Text(
                  'Enter your details',
                  style: FlutterFlowTheme.of(context).title2.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF14181B),
                        fontSize: 28,
                        fontWeight: FontWeight.normal,
                      ),
                ),
                actions: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      buttonSize: 48,
                      icon: Icon(
                        Icons.close_rounded,
                        color: Color(0xFF57636C),
                        size: 30,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'USER_PROFILE4MENTOR_MATCH_COPY_close_rou');
                        logFirebaseEvent('IconButton_Navigate-Back');
                        context.pop();
                      },
                    ),
                  ),
                ],
                centerTitle: false,
                elevation: 0,
              ),
              backgroundColor: Colors.white,
              body: SafeArea(
                child: GestureDetector(
                  onTap: () => FocusScope.of(context).unfocus(),
                  child: Form(
                    key: formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 16, 16, 0),
                                  child: TextFormField(
                                    controller: userNameController ??=
                                        TextEditingController(
                                      text:
                                          userProfile4mentorMatchCopyUsersAdditionalRecord!
                                              .userName,
                                    ),
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Name',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF57636C),
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFF1F4F8),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFF1F4F8),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20, 32, 20, 12),
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).subtitle1,
                                    textAlign: TextAlign.start,
                                    maxLines: 1,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 12, 16, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                            color: Color(0xFFF1F4F8),
                                            width: 2,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 5, 8, 5),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 5, 0),
                                                child: Text(
                                                  'Date of Birth - ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 14,
                                                      ),
                                                ),
                                              ),
                                              Text(
                                                dateTimeFormat(
                                                    'yMMMd', datePicked1),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFF57636C),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 0, 0, 0),
                                        child: InkWell(
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'USER_PROFILE4MENTOR_MATCH_COPY_DOB_ON_TA');
                                            logFirebaseEvent(
                                                'DOB_Date-Time-Picker');
                                            if (kIsWeb) {
                                              final _datePicked1Date =
                                                  await showDatePicker(
                                                context: context,
                                                initialDate:
                                                    getCurrentTimestamp,
                                                firstDate: DateTime(1900),
                                                lastDate: DateTime(2050),
                                              );

                                              if (_datePicked1Date != null) {
                                                setState(
                                                  () => datePicked1 = DateTime(
                                                    _datePicked1Date.year,
                                                    _datePicked1Date.month,
                                                    _datePicked1Date.day,
                                                  ),
                                                );
                                              }
                                            } else {
                                              await DatePicker.showDatePicker(
                                                context,
                                                showTitleActions: true,
                                                onConfirm: (date) {
                                                  setState(
                                                      () => datePicked1 = date);
                                                },
                                                currentTime:
                                                    getCurrentTimestamp,
                                                minTime: DateTime(0, 0, 0),
                                                locale: LocaleType.values
                                                    .firstWhere(
                                                  (l) =>
                                                      l.name ==
                                                      FFLocalizations.of(
                                                              context)
                                                          .languageCode,
                                                  orElse: () => LocaleType.en,
                                                ),
                                              );
                                            }
                                          },
                                          child: Icon(
                                            Icons.date_range_outlined,
                                            color: Color(0xFF57636C),
                                            size: 24,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 12, 16, 0),
                                  child:
                                      StreamBuilder<List<HometownListRecord>>(
                                    stream: queryHometownListRecord(),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryColor,
                                            ),
                                          ),
                                        );
                                      }
                                      List<HometownListRecord>
                                          hometownselectHometownListRecordList =
                                          snapshot.data!;
                                      return FlutterFlowDropDown(
                                        initialOption: hometownselectValue ??=
                                            userProfile4mentorMatchCopyUsersAdditionalRecord!
                                                .hometownCity,
                                        options:
                                            hometownselectHometownListRecordList
                                                .map((e) => e.hometownName!)
                                                .toList()
                                                .toList(),
                                        onChanged: (val) => setState(
                                            () => hometownselectValue = val),
                                        width: double.infinity,
                                        height: 60,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Color(0xFF14181B),
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        hintText: 'Select Hometown',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: Color(0xFF57636C),
                                          size: 15,
                                        ),
                                        fillColor: Colors.white,
                                        elevation: 2,
                                        borderColor: Color(0xFFF1F4F8),
                                        borderWidth: 2,
                                        borderRadius: 8,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            24, 4, 12, 4),
                                        hidesUnderline: true,
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 12, 16, 0),
                                  child: StreamBuilder<
                                      List<IndianCollegeListRecord>>(
                                    stream: queryIndianCollegeListRecord(),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryColor,
                                            ),
                                          ),
                                        );
                                      }
                                      List<IndianCollegeListRecord>
                                          collegeNameIndianCollegeListRecordList =
                                          snapshot.data!;
                                      return FlutterFlowDropDown(
                                        initialOption: collegeNameValue ??=
                                            userProfile4mentorMatchCopyUsersAdditionalRecord!
                                                .gradCollegeName,
                                        options:
                                            collegeNameIndianCollegeListRecordList
                                                .map((e) => e.collegeName!)
                                                .toList()
                                                .toList(),
                                        onChanged: (val) => setState(
                                            () => collegeNameValue = val),
                                        width: double.infinity,
                                        height: 60,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Color(0xFF14181B),
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        hintText: 'Select College Name',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: Color(0xFF57636C),
                                          size: 15,
                                        ),
                                        fillColor: Colors.white,
                                        elevation: 2,
                                        borderColor: Color(0xFFF1F4F8),
                                        borderWidth: 2,
                                        borderRadius: 8,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            24, 4, 12, 4),
                                        hidesUnderline: true,
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 12, 16, 0),
                                  child: StreamBuilder<List<DegreeListRecord>>(
                                    stream: queryDegreeListRecord(),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryColor,
                                            ),
                                          ),
                                        );
                                      }
                                      List<DegreeListRecord>
                                          degreeDegreeListRecordList =
                                          snapshot.data!;
                                      return FlutterFlowDropDown(
                                        initialOption: degreeValue ??=
                                            userProfile4mentorMatchCopyUsersAdditionalRecord!
                                                .gradDegreeCompleted,
                                        options: [
                                          'Not Started',
                                          'In Progress',
                                          'Complete'
                                        ],
                                        onChanged: (val) =>
                                            setState(() => degreeValue = val),
                                        width: double.infinity,
                                        height: 60,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Color(0xFF14181B),
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        hintText: 'Select Degree',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: Color(0xFF57636C),
                                          size: 15,
                                        ),
                                        fillColor: Colors.white,
                                        elevation: 2,
                                        borderColor: Color(0xFFF1F4F8),
                                        borderWidth: 2,
                                        borderRadius: 8,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            24, 4, 12, 4),
                                        hidesUnderline: true,
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 12, 16, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 5, 0),
                                        child: FlutterFlowDropDown(
                                          initialOption: specializationValue ??=
                                              userProfile4mentorMatchCopyUsersAdditionalRecord!
                                                  .gradSpecialisation,
                                          options: ['Option 1'],
                                          onChanged: (val) => setState(
                                              () => specializationValue = val),
                                          width: 170,
                                          height: 50,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    color: Colors.black,
                                                  ),
                                          hintText: 'Specialization',
                                          fillColor: Colors.white,
                                          elevation: 2,
                                          borderColor: Color(0xFFF1F4F8),
                                          borderWidth: 2,
                                          borderRadius: 8,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 4, 12, 4),
                                          hidesUnderline: true,
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                            color: Color(0xFFF1F4F8),
                                            width: 2,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 5, 8, 5),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 5, 0),
                                                child: Text(
                                                  'Graduation Date',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 10,
                                                      ),
                                                ),
                                              ),
                                              Text(
                                                dateTimeFormat(
                                                    'yMMMd', datePicked2),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFF57636C),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 0, 0, 0),
                                        child: InkWell(
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'USER_PROFILE4MENTOR_MATCH_COPY_GradYear_');
                                            logFirebaseEvent(
                                                'GradYear_Date-Time-Picker');
                                            if (kIsWeb) {
                                              final _datePicked2Date =
                                                  await showDatePicker(
                                                context: context,
                                                initialDate:
                                                    getCurrentTimestamp,
                                                firstDate: DateTime(1900),
                                                lastDate: DateTime(2050),
                                              );

                                              if (_datePicked2Date != null) {
                                                setState(
                                                  () => datePicked2 = DateTime(
                                                    _datePicked2Date.year,
                                                    _datePicked2Date.month,
                                                    _datePicked2Date.day,
                                                  ),
                                                );
                                              }
                                            } else {
                                              await DatePicker.showDatePicker(
                                                context,
                                                showTitleActions: true,
                                                onConfirm: (date) {
                                                  setState(
                                                      () => datePicked2 = date);
                                                },
                                                currentTime:
                                                    getCurrentTimestamp,
                                                minTime: DateTime(0, 0, 0),
                                                locale: LocaleType.values
                                                    .firstWhere(
                                                  (l) =>
                                                      l.name ==
                                                      FFLocalizations.of(
                                                              context)
                                                          .languageCode,
                                                  orElse: () => LocaleType.en,
                                                ),
                                              );
                                            }
                                          },
                                          child: Icon(
                                            Icons.date_range_outlined,
                                            color: Color(0xFF57636C),
                                            size: 24,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 24, 0, 60),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'USER_PROFILE4MENTOR_MATCH_COPY_NEXT_BTN_');
                                      logFirebaseEvent('Button_Validate-Form');
                                      if (formKey.currentState == null ||
                                          !formKey.currentState!.validate()) {
                                        return;
                                      }

                                      logFirebaseEvent('Button_Backend-Call');

                                      final usersAdditionalUpdateData =
                                          createUsersAdditionalRecordData(
                                        userName:
                                            userNameController?.text ?? '',
                                        hometownCity: hometownselectValue,
                                        gradCollegeName: collegeNameValue,
                                        gradDegreeCompleted: degreeValue,
                                        gradSpecialisation: specializationValue,
                                        dateofBirth: datePicked1,
                                        yearofcompletionGradDegree: datePicked2,
                                        part1Status: true,
                                      );
                                      await userProfile4mentorMatchCopyUsersAdditionalRecord!
                                          .reference
                                          .update(usersAdditionalUpdateData);
                                      logFirebaseEvent('Button_Navigate-To');

                                      context.pushNamed(
                                          'UserProfile4mentor_Part2');
                                    },
                                    text: 'Next',
                                    options: FFButtonOptions(
                                      width: 270,
                                      height: 50,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle1
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      elevation: 3,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ));
      },
    );
  }
}
