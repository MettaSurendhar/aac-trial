import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'mentor_request_card_widget.dart' show MentorRequestCardWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MentorRequestCardModel extends FlutterFlowModel<MentorRequestCardWidget> {
  ///  Local state fields for this component.

  bool requestSent = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
