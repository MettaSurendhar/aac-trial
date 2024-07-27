import '/backend/backend.dart';
import '/empty_list_widgets/no_suggestions/no_suggestions_widget.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/mentee/mentee_settings/mentee_settings_widget.dart';
import '/mentee/mentor_request_card/mentor_request_card_widget.dart';
import 'mentee_search_widget.dart' show MenteeSearchWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class MenteeSearchModel extends FlutterFlowModel<MenteeSearchWidget> {
  ///  Local state fields for this page.

  bool searchActive = false;

  List<String> requestedUsers = [];
  void addToRequestedUsers(String item) => requestedUsers.add(item);
  void removeFromRequestedUsers(String item) => requestedUsers.remove(item);
  void removeAtIndexFromRequestedUsers(int index) =>
      requestedUsers.removeAt(index);
  void insertAtIndexInRequestedUsers(int index, String item) =>
      requestedUsers.insert(index, item);
  void updateRequestedUsersAtIndex(int index, Function(String) updateFn) =>
      requestedUsers[index] = updateFn(requestedUsers[index]);

  List<String> currentMentors = [];
  void addToCurrentMentors(String item) => currentMentors.add(item);
  void removeFromCurrentMentors(String item) => currentMentors.remove(item);
  void removeAtIndexFromCurrentMentors(int index) =>
      currentMentors.removeAt(index);
  void insertAtIndexInCurrentMentors(int index, String item) =>
      currentMentors.insert(index, item);
  void updateCurrentMentorsAtIndex(int index, Function(String) updateFn) =>
      currentMentors[index] = updateFn(currentMentors[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<UsersRecord> simpleSearchResults = [];
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

    menteeSettingsModel.dispose();
  }
}
