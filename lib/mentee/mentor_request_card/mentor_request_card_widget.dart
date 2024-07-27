import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mentor_request_card_model.dart';
export 'mentor_request_card_model.dart';

class MentorRequestCardWidget extends StatefulWidget {
  const MentorRequestCardWidget({
    super.key,
    required this.mentorDoc,
  });

  final UsersRecord? mentorDoc;

  @override
  State<MentorRequestCardWidget> createState() =>
      _MentorRequestCardWidgetState();
}

class _MentorRequestCardWidgetState extends State<MentorRequestCardWidget> {
  late MentorRequestCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MentorRequestCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 110.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF022046), FlutterFlowTheme.of(context).secondary],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(-1.0, 0.98),
            end: AlignmentDirectional(1.0, -0.98),
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      widget!.mentorDoc!.photoUrl,
                      width: 80.0,
                      height: 80.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Text(
                      widget!.mentorDoc!.displayName,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: Colors.black,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts:
                                GoogleFonts.asMap().containsKey('Inter'),
                          ),
                    ),
                  ),
                  Builder(
                    builder: (context) {
                      if ((currentUserDocument?.requestedMentors?.toList() ??
                              [])
                          .contains(widget!.mentorDoc?.reference)) {
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 20.0, 0.0, 20.0),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Sent',
                                options: FFButtonOptions(
                                  width: 120.0,
                                  height: 30.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFF2189BA),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: Colors.black,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ],
                        );
                      } else if ((currentUserDocument?.acceptedMentors
                                  ?.toList() ??
                              [])
                          .contains(widget!.mentorDoc?.reference)) {
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 20.0, 0.0, 20.0),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Connected',
                            options: FFButtonOptions(
                              width: 120.0,
                              height: 30.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).success,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        );
                      } else {
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 20.0, 0.0, 20.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await RequestsRecord.collection.doc().set({
                                ...createRequestsRecordData(
                                  mentorRef: widget!.mentorDoc?.reference,
                                  menteeRef: currentUserReference,
                                  createdTime: getCurrentTimestamp,
                                  requestState: RequestState.PENDING,
                                ),
                                ...mapToFirestore(
                                  {
                                    'user_refs': functions.addMenteeMentorRefs(
                                        currentUserReference!,
                                        widget!.mentorDoc!.reference),
                                  },
                                ),
                              });

                              await currentUserReference!.update({
                                ...mapToFirestore(
                                  {
                                    'requestedMentors': FieldValue.arrayUnion(
                                        [widget!.mentorDoc?.reference]),
                                  },
                                ),
                              });
                            },
                            text: 'Send Request',
                            options: FFButtonOptions(
                              width: 125.0,
                              height: 35.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFFBB0808),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleSmallFamily,
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleSmallFamily),
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                              hoverColor: Color(0xFFFF0000),
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            ]
                .divide(SizedBox(width: 1.0))
                .addToStart(SizedBox(width: 5.0))
                .addToEnd(SizedBox(width: 5.0)),
          ),
        ),
      ),
    );
  }
}
