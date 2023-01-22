import '../appointment_details/appointment_details_widget.dart';
import '../components/appointment_list_widget.dart';
import '../components/main_logo_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../jb000045/jb000045_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppointmentsWidget extends StatefulWidget {
  const MyAppointmentsWidget({Key? key}) : super(key: key);

  @override
  _MyAppointmentsWidgetState createState() => _MyAppointmentsWidgetState();
}

class _MyAppointmentsWidgetState extends State<MyAppointmentsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AppointmentDetailsWidget(),
            ),
          );
        },
        backgroundColor: Color(0xFFBD2F2F),
        elevation: 8,
        child: Icon(
          Icons.add_rounded,
          color: Color(0xFFFFD053),
          size: 36,
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'Appointments',
            style: FlutterFlowTheme.of(context).title1,
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
              child: MainLogoWidget(),
            ),
          ],
          centerTitle: false,
          toolbarHeight: 100,
          elevation: 0,
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'My Appointments',
                    style: FlutterFlowTheme.of(context).bodyText2,
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Jb000045Widget(),
                  ),
                );
              },
              child: AppointmentListWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
