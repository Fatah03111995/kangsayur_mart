import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kangsayur_mart/core/themes/my_theme.dart';
import 'package:kangsayur_mart/ui/pages/search/search_page.dart';
import 'package:kangsayur_mart/ui/widgets/input_text.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InputText(
      hint: 'Search...',
      controller: _searchController,
      suffixIcon: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SearchPage()));
        },
        child: Icon(
          CupertinoIcons.search,
          color: Theme.of(context).myColorTxt,
        ),
      ),
    );
  }
}
