import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'mentee_form_widget.dart' show MenteeFormWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MenteeFormModel extends FlutterFlowModel<MenteeFormWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  String? _fullNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the full name.';
    }

    return null;
  }

  // State field(s) for branch widget.
  FocusNode? branchFocusNode;
  TextEditingController? branchTextController;
  String? Function(BuildContext, String?)? branchTextControllerValidator;
  String? _branchTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the branch.';
    }

    return null;
  }

  // State field(s) for Graduationyear widget.
  FocusNode? graduationyearFocusNode;
  TextEditingController? graduationyearTextController;
  String? Function(BuildContext, String?)?
      graduationyearTextControllerValidator;
  // State field(s) for Linkedin widget.
  FocusNode? linkedinFocusNode;
  TextEditingController? linkedinTextController;
  String? Function(BuildContext, String?)? linkedinTextControllerValidator;
  // State field(s) for interestOptions widget.
  FormFieldController<List<String>>? interestOptionsValueController;
  List<String>? get interestOptionsValues =>
      interestOptionsValueController?.value;
  set interestOptionsValues(List<String>? v) =>
      interestOptionsValueController?.value = v;

  // State field(s) for statement widget.
  FocusNode? statementFocusNode;
  TextEditingController? statementTextController;
  String? Function(BuildContext, String?)? statementTextControllerValidator;
  String? _statementTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    fullNameTextControllerValidator = _fullNameTextControllerValidator;
    branchTextControllerValidator = _branchTextControllerValidator;
    statementTextControllerValidator = _statementTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    branchFocusNode?.dispose();
    branchTextController?.dispose();

    graduationyearFocusNode?.dispose();
    graduationyearTextController?.dispose();

    linkedinFocusNode?.dispose();
    linkedinTextController?.dispose();

    statementFocusNode?.dispose();
    statementTextController?.dispose();
  }
}
