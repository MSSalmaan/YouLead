import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfile4mentorPart2Widget extends StatefulWidget {
  const UserProfile4mentorPart2Widget({Key? key}) : super(key: key);

  @override
  _UserProfile4mentorPart2WidgetState createState() =>
      _UserProfile4mentorPart2WidgetState();
}

class _UserProfile4mentorPart2WidgetState
    extends State<UserProfile4mentorPart2Widget> {
  String? numberofworkexpValue;
  String? workedYNValue;
  TextEditingController? presentCompanyController;
  TextEditingController? presentJobTitleController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'UserProfile4mentor_Part2'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    presentCompanyController?.dispose();
    presentJobTitleController?.dispose();
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
            userProfile4mentorPart2UsersAdditionalRecordList = snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final userProfile4mentorPart2UsersAdditionalRecord =
            userProfile4mentorPart2UsersAdditionalRecordList.isNotEmpty
                ? userProfile4mentorPart2UsersAdditionalRecordList.first
                : null;
        return Title(
            title: 'UserProfile4mentor_Part2',
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
                            'USER_PROFILE4MENTOR_PART2_close_rounded_');
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
                                      16, 12, 16, 0),
                                  child: FlutterFlowDropDown(
                                    initialOption: workedYNValue ??=
                                        userProfile4mentorPart2UsersAdditionalRecord!
                                            .working
                                            ?.toString(),
                                    options: ['Yes', 'No'],
                                    onChanged: (val) =>
                                        setState(() => workedYNValue = val),
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
                                    hintText: 'Do you have work experience?',
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
                                  ),
                                ),
                                if (workedYNValue == 'Yes')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 12, 16, 0),
                                    child: FlutterFlowDropDown(
                                      initialOption: numberofworkexpValue ??=
                                          userProfile4mentorPart2UsersAdditionalRecord!
                                              .workexp
                                              .toString(),
                                      options: [
                                        '1',
                                        '2',
                                        '3',
                                        '4',
                                        'More than 4 years'
                                      ],
                                      onChanged: (val) => setState(
                                          () => numberofworkexpValue = val),
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
                                      hintText:
                                          'Number of years of Work Experience?',
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
                                    ),
                                  ),
                                if (workedYNValue == 'Yes')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 16, 16, 0),
                                    child: TextFormField(
                                      controller: presentCompanyController ??=
                                          TextEditingController(
                                        text:
                                            userProfile4mentorPart2UsersAdditionalRecord!
                                                .companyName,
                                      ),
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: 'Present Company',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Color(0xFF57636C),
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFF1F4F8),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFF1F4F8),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20, 32, 20, 12),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF14181B),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                      keyboardType: TextInputType.multiline,
                                    ),
                                  ),
                                if (workedYNValue == 'Yes')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 16, 16, 0),
                                    child: TextFormField(
                                      controller: presentJobTitleController ??=
                                          TextEditingController(
                                        text:
                                            userProfile4mentorPart2UsersAdditionalRecord!
                                                .jobTitle,
                                      ),
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: 'Present Job Title',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Color(0xFF57636C),
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFF1F4F8),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFF1F4F8),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20, 32, 20, 12),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF14181B),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                      keyboardType: TextInputType.multiline,
                                    ),
                                  ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 24, 0, 60),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'USER_PROFILE4MENTOR_PART2_NEXT_BTN_ON_TA');
                                      logFirebaseEvent('Button_Validate-Form');
                                      if (formKey.currentState == null ||
                                          !formKey.currentState!.validate()) {
                                        return;
                                      }

                                      logFirebaseEvent('Button_Backend-Call');

                                      final usersAdditionalUpdateData =
                                          createUsersAdditionalRecordData(
                                        companyName:
                                            userProfile4mentorPart2UsersAdditionalRecord!
                                                .companyName,
                                        workexp:
                                            userProfile4mentorPart2UsersAdditionalRecord!
                                                .workexp,
                                        jobTitle:
                                            userProfile4mentorPart2UsersAdditionalRecord!
                                                .jobTitle,
                                        part1Status: true,
                                      );
                                      await userProfile4mentorPart2UsersAdditionalRecord!
                                          .reference
                                          .update(usersAdditionalUpdateData);
                                      logFirebaseEvent('Button_Navigate-To');

                                      context.pushNamed(
                                          'UserProfile4mentor_Part3');
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
