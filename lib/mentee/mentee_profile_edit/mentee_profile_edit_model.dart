import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/chat/change_photo/change_photo_widget.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'mentee_profile_edit_widget.dart' show MenteeProfileEditWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class MenteeProfileEditModel extends FlutterFlowModel<MenteeProfileEditWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for GraduationYear widget.
  FocusNode? graduationYearFocusNode;
  TextEditingController? graduationYearTextController;
  final graduationYearMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)?
      graduationYearTextControllerValidator;
  // State field(s) for Branch widget.
  FocusNode? branchFocusNode;
  TextEditingController? branchTextController;
  String? Function(BuildContext, String?)? branchTextControllerValidator;
  // State field(s) for linkedin widget.
  FocusNode? linkedinFocusNode;
  TextEditingController? linkedinTextController;
  String? Function(BuildContext, String?)? linkedinTextControllerValidator;
  // State field(s) for PersonalStatement widget.
  FocusNode? personalStatementFocusNode;
  TextEditingController? personalStatementTextController;
  String? Function(BuildContext, String?)?
      personalStatementTextControllerValidator;
  // State field(s) for interestOptions widget.
  FormFieldController<List<String>>? interestOptionsValueController;
  List<String>? get interestOptionsValues =>
      interestOptionsValueController?.value;
  set interestOptionsValues(List<String>? v) =>
      interestOptionsValueController?.value = v;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    graduationYearFocusNode?.dispose();
    graduationYearTextController?.dispose();

    branchFocusNode?.dispose();
    branchTextController?.dispose();

    linkedinFocusNode?.dispose();
    linkedinTextController?.dispose();

    personalStatementFocusNode?.dispose();
    personalStatementTextController?.dispose();
  }
}
