import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kangsayur_mart/core/bloc/filter/filter_bloc.dart';
import 'package:kangsayur_mart/core/bloc/search/search_bloc.dart';
import 'package:kangsayur_mart/core/routes/page_path.dart';
import 'package:kangsayur_mart/core/themes/my_theme.dart';
import 'package:kangsayur_mart/ui/pages/search/search_page.dart';
import 'package:kangsayur_mart/ui/widgets/input_text.dart';

class SearchWidget extends StatefulWidget {
  final bool isInSearchPage;
  const SearchWidget({super.key, this.isInSearchPage = false});

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
          if (widget.isInSearchPage) {
            context
                .read<SearchBloc>()
                .add(SearchByQuery(query: _searchController.text));
          } else {
            context
                .read<SearchBloc>()
                .add(SearchByQuery(query: _searchController.text));
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BlocProvider(
                          key: Key(PagePath.search),
                          create: (context) => FilterBloc(),
                          child: const SearchPage(),
                        )));
          }
        },
        child: Icon(
          CupertinoIcons.search,
          color: Theme.of(context).myColorTxt,
        ),
      ),
    );
  }
}
