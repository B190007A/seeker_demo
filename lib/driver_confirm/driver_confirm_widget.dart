import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class DriverConfirmWidget extends StatefulWidget {
  const DriverConfirmWidget({Key? key}) : super(key: key);

  @override
  _DriverConfirmWidgetState createState() => _DriverConfirmWidgetState();
}

class _DriverConfirmWidgetState extends State<DriverConfirmWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Color(0xFFBD2F2F),
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 30),
                  child: Icon(
                    Icons.check_rounded,
                    color: Color(0xFFFFD053),
                    size: 60,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: Text(
                'Identity confirmed',
                style: FlutterFlowTheme.of(context).title1.override(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFFFFD053),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            AuthUserStreamWidget(
              builder: (context) => Text(
                currentUserDisplayName,
                style: FlutterFlowTheme.of(context).title3,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 8, 24, 0),
              child: Text(
                'The driver has been authenticated and still reminds you to take good care of your personal belongings and be vigilant about your personal safety.',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyText2,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 28, 0, 36),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavBarPage(initialPage: 'homePage'),
                    ),
                  );
                },
                text: 'Start',
                options: FFButtonOptions(
                  width: 300,
                  height: 50,
                  color: Color(0xFFBD2F2F),
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFFFFD053),
                      ),
                  elevation: 2,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
