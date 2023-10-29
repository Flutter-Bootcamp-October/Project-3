import 'package:flutter/material.dart';
import 'package:instagram_cloning/widgets/search_widget/search_gridview.dart';
import 'package:instagram_cloning/widgets/search_widget/search_textfield.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [SearchTextField(), SearchGridView()],
        ),
      ),
    );
  }
}
