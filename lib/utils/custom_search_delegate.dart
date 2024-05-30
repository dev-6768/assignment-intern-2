
import 'package:assignmentintern2/utils/constants.dart';
import 'package:assignmentintern2/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  final double heightAppBar;
  CustomSearchDelegate({required this.heightAppBar});

  @override
  List<Widget> buildActions(BuildContext context) {
    return [SizedBox(width: 0)];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return const SizedBox(width: 0,);
  }

  @override
  Widget buildResults(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: ConstantUtils.returnMembers,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: ConstantUtils.returnMembers,
    );
  }

  @override
  Widget buildCustomLayoutWidget(BuildContext context) {
    return CustomAppBar.simpleAppBar(context);
  }

   @override
  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = Theme.of(context);
    assert(theme != null);
    return theme;
  }
}