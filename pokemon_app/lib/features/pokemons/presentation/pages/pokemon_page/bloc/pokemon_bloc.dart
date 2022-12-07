import 'package:bloc/bloc.dart';
import 'package:pokemon_app/features/pokemons/presentation/pages/pokemon_page/bloc/pokemon_event.dart';
import 'package:pokemon_app/features/pokemons/presentation/pages/pokemon_page/bloc/pokemon_state.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  PokemonBloc(super.initialState);
}
