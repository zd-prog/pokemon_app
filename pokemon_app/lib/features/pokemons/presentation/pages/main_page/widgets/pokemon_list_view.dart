import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PokemonListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PokemonListViewState();
}

class _PokemonListViewState extends State<PokemonListView> {
  static const _pageSize = 20;

  final PagingController<int, int> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final newItems = List.generate(100, (index) => index);
      final isLastPage = newItems.length < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + newItems.length;
        _pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return PagedListView<int, int>(
      pagingController: _pagingController,
      builderDelegate: PagedChildBuilderDelegate<int>(
        itemBuilder: (context, item, index) => Text(
          item.toString(),
        ),
      ),
    );
  }
}
