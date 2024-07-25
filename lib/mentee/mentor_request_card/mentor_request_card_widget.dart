import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.requestSent = false;
      setState(() {});
    });

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
        height: 130.0,
        decoration: BoxDecoration(
          color: Color(0xFFE6E6E6),
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
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: Text(
                      widget!.mentorDoc!.displayName,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: Colors.black,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts:
                                GoogleFonts.asMap().containsKey('Inter'),
                          ),
                    ),
                  ),
                  Text(
                    '0 followers',
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Inter',
                          color: Color(0xFF959595),
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              GoogleFonts.asMap().containsKey('Inter'),
                        ),
                  ),
                  Builder(
                    builder: (context) {
                      if (_model.requestSent) {
                        return FFButtonWidget(
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
                            color: Color(0xFFFF0000),
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        );
                      } else {
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 20.0, 0.0, 20.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              if (!_model.requestSent) {
                                await RequestsRecord.collection.doc().set({
                                  ...createRequestsRecordData(
                                    mentorRef: widget!.mentorDoc?.reference,
                                    menteeRef: currentUserReference,
                                    createdTime: getCurrentTimestamp,
                                    requestState: RequestState.PENDING,
                                  ),
                                  ...mapToFirestore(
                                    {
                                      'user_refs':
                                          functions.addMenteeMentorRefs(
                                              currentUserReference!,
                                              widget!.mentorDoc!.reference),
                                    },
                                  ),
                                });
                                _model.requestSent = true;
                                setState(() {});
                              }
                            },
                            text: _model.requestSent ? 'Sent' : 'Send Request',
                            options: FFButtonOptions(
                              width: 120.0,
                              height: 30.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleSmallFamily,
                                    color: Colors.white,
                                    letterSpacing: 0.0,
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
