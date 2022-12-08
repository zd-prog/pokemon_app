import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pokemon_app/features/pokemons/presentation/pages/main_page/widgets/pokemon_list_tile.dart';

class PokemonListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PokemonListViewState();
}

class _PokemonListViewState extends State<PokemonListView> {
  static const _pageSize = 20;

  final PagingController<int, String> _pagingController =
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
      final newItems = List.generate(100, (index) => index.toString());
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
    return PagedListView<int, String>(
      pagingController: _pagingController,
      builderDelegate: PagedChildBuilderDelegate<String>(
          itemBuilder: (context, item, index) => PokemonListTile(
                pokemonName: item,
              )),
    );
  }
}
