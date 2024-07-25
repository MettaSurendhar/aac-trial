import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/chat/date_time_form/date_time_form_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'meeting_creation_widget.dart' show MeetingCreationWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MeetingCreationModel extends FlutterFlowModel<MeetingCreationWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for agenda widget.
  FocusNode? agendaFocusNode;
  TextEditingController? agendaTextController;
  String? Function(BuildContext, String?)? agendaTextControllerValidator;
  // State field(s) for details widget.
  FocusNode? detailsFocusNode;
  TextEditingController? detailsTextController;
  String? Function(BuildContext, String?)? detailsTextControllerValidator;
  // Model for startTime.
  late DateTimeFormModel startTimeModel;
  // Model for endTime.
  late DateTimeFormModel endTimeModel;

  @override
  void initState(BuildContext context) {
    startTimeModel = createModel(context, () => DateTimeFormModel());
    endTimeModel = createModel(context, () => DateTimeFormModel());
  }

  @override
  void dispose() {
    agendaFocusNode?.dispose();
    agendaTextController?.dispose();

    detailsFocusNode?.dispose();
    detailsTextController?.dispose();

    startTimeModel.dispose();
    endTimeModel.dispose();
  }
}
