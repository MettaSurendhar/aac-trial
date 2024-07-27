import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'meeting_details_copy_widget.dart' show MeetingDetailsCopyWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MeetingDetailsCopyModel
    extends FlutterFlowModel<MeetingDetailsCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - eventToJson] action in Button widget.
  dynamic? createdEvent2;
  // Stores action output result for [Custom Action - signInWithGoogle] action in Button widget.
  String? accessToken2;
  // Stores action output result for [Custom Action - addEventToCalendar] action in Button widget.
  int? eventAdded2;
  // Stores action output result for [Custom Action - eventToJson] action in IconButton widget.
  dynamic? createdEvent;
  // Stores action output result for [Custom Action - signInWithGoogle] action in IconButton widget.
  String? accessToken;
  // Stores action output result for [Custom Action - addEventToCalendar] action in IconButton widget.
  int? eventAdded;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
