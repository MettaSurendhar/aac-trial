import '/askingpage/selecting_mentor_mentee/selecting_mentor_mentee_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'selection_page_widget.dart' show SelectionPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SelectionPageModel extends FlutterFlowModel<SelectionPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SelectingMentorMentee component.
  late SelectingMentorMenteeModel selectingMentorMenteeModel;

  @override
  void initState(BuildContext context) {
    selectingMentorMenteeModel =
        createModel(context, () => SelectingMentorMenteeModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    selectingMentorMenteeModel.dispose();
  }
}
