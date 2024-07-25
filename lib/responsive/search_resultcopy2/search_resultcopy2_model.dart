import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/mentee/filters1_on_mentee_search/filters1_on_mentee_search_widget.dart';
import '/mentee/mentee_settings/mentee_settings_widget.dart';
import 'search_resultcopy2_widget.dart' show SearchResultcopy2Widget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchResultcopy2Model extends FlutterFlowModel<SearchResultcopy2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for Username widget.
  FocusNode? usernameFocusNode1;
  TextEditingController? usernameTextController1;
  String? Function(BuildContext, String?)? usernameTextController1Validator;
  // State field(s) for Position widget.
  FocusNode? positionFocusNode1;
  TextEditingController? positionTextController1;
  String? Function(BuildContext, String?)? positionTextController1Validator;
  // State field(s) for Followers widget.
  FocusNode? followersFocusNode1;
  TextEditingController? followersTextController1;
  String? Function(BuildContext, String?)? followersTextController1Validator;
  // State field(s) for Username widget.
  FocusNode? usernameFocusNode2;
  TextEditingController? usernameTextController2;
  String? Function(BuildContext, String?)? usernameTextController2Validator;
  // State field(s) for Position widget.
  FocusNode? positionFocusNode2;
  TextEditingController? positionTextController2;
  String? Function(BuildContext, String?)? positionTextController2Validator;
  // State field(s) for Followers widget.
  FocusNode? followersFocusNode2;
  TextEditingController? followersTextController2;
  String? Function(BuildContext, String?)? followersTextController2Validator;
  // State field(s) for Username widget.
  FocusNode? usernameFocusNode3;
  TextEditingController? usernameTextController3;
  String? Function(BuildContext, String?)? usernameTextController3Validator;
  // State field(s) for Position widget.
  FocusNode? positionFocusNode3;
  TextEditingController? positionTextController3;
  String? Function(BuildContext, String?)? positionTextController3Validator;
  // State field(s) for Followers widget.
  FocusNode? followersFocusNode3;
  TextEditingController? followersTextController3;
  String? Function(BuildContext, String?)? followersTextController3Validator;
  // State field(s) for Username widget.
  FocusNode? usernameFocusNode4;
  TextEditingController? usernameTextController4;
  String? Function(BuildContext, String?)? usernameTextController4Validator;
  // State field(s) for Position widget.
  FocusNode? positionFocusNode4;
  TextEditingController? positionTextController4;
  String? Function(BuildContext, String?)? positionTextController4Validator;
  // State field(s) for Followers widget.
  FocusNode? followersFocusNode4;
  TextEditingController? followersTextController4;
  String? Function(BuildContext, String?)? followersTextController4Validator;
  // State field(s) for Username widget.
  FocusNode? usernameFocusNode5;
  TextEditingController? usernameTextController5;
  String? Function(BuildContext, String?)? usernameTextController5Validator;
  // State field(s) for Position widget.
  FocusNode? positionFocusNode5;
  TextEditingController? positionTextController5;
  String? Function(BuildContext, String?)? positionTextController5Validator;
  // State field(s) for Followers widget.
  FocusNode? followersFocusNode5;
  TextEditingController? followersTextController5;
  String? Function(BuildContext, String?)? followersTextController5Validator;
  // State field(s) for Username widget.
  FocusNode? usernameFocusNode6;
  TextEditingController? usernameTextController6;
  String? Function(BuildContext, String?)? usernameTextController6Validator;
  // State field(s) for Position widget.
  FocusNode? positionFocusNode6;
  TextEditingController? positionTextController6;
  String? Function(BuildContext, String?)? positionTextController6Validator;
  // State field(s) for Followers widget.
  FocusNode? followersFocusNode6;
  TextEditingController? followersTextController6;
  String? Function(BuildContext, String?)? followersTextController6Validator;
  // Model for MenteeSettings component.
  late MenteeSettingsModel menteeSettingsModel;

  @override
  void initState(BuildContext context) {
    menteeSettingsModel = createModel(context, () => MenteeSettingsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    usernameFocusNode1?.dispose();
    usernameTextController1?.dispose();

    positionFocusNode1?.dispose();
    positionTextController1?.dispose();

    followersFocusNode1?.dispose();
    followersTextController1?.dispose();

    usernameFocusNode2?.dispose();
    usernameTextController2?.dispose();

    positionFocusNode2?.dispose();
    positionTextController2?.dispose();

    followersFocusNode2?.dispose();
    followersTextController2?.dispose();

    usernameFocusNode3?.dispose();
    usernameTextController3?.dispose();

    positionFocusNode3?.dispose();
    positionTextController3?.dispose();

    followersFocusNode3?.dispose();
    followersTextController3?.dispose();

    usernameFocusNode4?.dispose();
    usernameTextController4?.dispose();

    positionFocusNode4?.dispose();
    positionTextController4?.dispose();

    followersFocusNode4?.dispose();
    followersTextController4?.dispose();

    usernameFocusNode5?.dispose();
    usernameTextController5?.dispose();

    positionFocusNode5?.dispose();
    positionTextController5?.dispose();

    followersFocusNode5?.dispose();
    followersTextController5?.dispose();

    usernameFocusNode6?.dispose();
    usernameTextController6?.dispose();

    positionFocusNode6?.dispose();
    positionTextController6?.dispose();

    followersFocusNode6?.dispose();
    followersTextController6?.dispose();

    menteeSettingsModel.dispose();
  }
}
