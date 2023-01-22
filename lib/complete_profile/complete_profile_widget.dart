import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CompleteProfileWidget extends StatefulWidget {
  const CompleteProfileWidget({Key? key}) : super(key: key);

  @override
  _CompleteProfileWidgetState createState() => _CompleteProfileWidgetState();
}

class _CompleteProfileWidgetState extends State<CompleteProfileWidget> {
  String? radioButtonGenderValue;
  TextEditingController? yourBirthdayController;
  TextEditingController? yourNameController;
  TextEditingController? yourPhoneController;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    yourBirthdayController = TextEditingController();
    yourNameController = TextEditingController();
    yourPhoneController = TextEditingController();
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    yourBirthdayController?.dispose();
    yourNameController?.dispose();
    yourPhoneController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: Color(0xFFBD2F2F),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: Color(0xFFFFD053),
            size: 32,
          ),
        ),
        title: Text(
          'Complete Profile',
          style: FlutterFlowTheme.of(context).title3.override(
                fontFamily: 'Outfit',
                color: Color(0xFFFFD053),
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              constraints: BoxConstraints(
                maxWidth: 600,
              ),
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                        child: Container(
                          width: 120,
                          height: 120,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/images/uiAvatar@2x.png',
                          ),
                        ),
                      ),
                      Text(
                        'Upload a photo for us to easily identify you.',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                        child: TextFormField(
                          controller: yourNameController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Your Name',
                            labelStyle: FlutterFlowTheme.of(context).bodyText2,
                            hintText: 'Please enter your nickname...',
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                            suffixIcon: Icon(
                              Icons.person,
                              color: Color(0xFF757575),
                              size: 24,
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                        child: TextFormField(
                          controller: yourPhoneController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Your phone number',
                            labelStyle: FlutterFlowTheme.of(context).bodyText2,
                            hintText: '01123456789',
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                            suffixIcon: Icon(
                              Icons.phone,
                              color: Color(0xFF757575),
                              size: 18,
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                        child: TextFormField(
                          controller: yourBirthdayController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Your birthday',
                            labelStyle: FlutterFlowTheme.of(context).bodyText2,
                            hintText: '31/12/1950',
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                            suffixIcon: Icon(
                              Icons.date_range,
                              color: Color(0xFF757575),
                              size: 22,
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                          keyboardType: TextInputType.datetime,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Gender',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: FlutterFlowRadioButton(
                                options:
                                    ['Male', 'Female', 'Undisclosed'].toList(),
                                onChanged: (val) => setState(
                                    () => radioButtonGenderValue = val),
                                optionHeight: 25,
                                textStyle:
                                    FlutterFlowTheme.of(context).bodyText2,
                                selectedTextStyle:
                                    FlutterFlowTheme.of(context).bodyText1,
                                textPadding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                                buttonPosition: RadioButtonPosition.left,
                                direction: Axis.horizontal,
                                radioButtonColor: Color(0xFFFFD053),
                                inactiveRadioButtonColor:
                                    FlutterFlowTheme.of(context).grayLight,
                                toggleable: false,
                                horizontalAlignment: WrapAlignment.center,
                                verticalAlignment: WrapCrossAlignment.start,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                        child: StreamBuilder<UsersRecord>(
                          stream:
                              UsersRecord.getDocument(currentUserReference!),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: SpinKitPumpingHeart(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    size: 40,
                                  ),
                                ),
                              );
                            }
                            final buttonCompleteProfileUsersRecord =
                                snapshot.data!;
                            return FFButtonWidget(
                              onPressed: () async {
                                final usersUpdateData = createUsersRecordData(
                                  displayName: yourNameController!.text,
                                  userSex: radioButtonGenderValue,
                                  phoneNumber: currentPhoneNumber,
                                  birthday: currentUserDocument!.birthday,
                                  photoUrl:
                                      buttonCompleteProfileUsersRecord.photoUrl,
                                );
                                await buttonCompleteProfileUsersRecord.reference
                                    .update(usersUpdateData);
                                await Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        NavBarPage(initialPage: 'homePage'),
                                  ),
                                  (r) => false,
                                );
                              },
                              text: 'Complete Profile',
                              options: FFButtonOptions(
                                width: 230,
                                height: 50,
                                color: Color(0xFFBD2F2F),
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFFFFD053),
                                    ),
                                elevation: 3,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(40),
                              ),
                            );
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
      ),
    );
  }
}
