class AppState {
  int index;
  AppState({required this.index});
}

class AppInitial extends AppState {
  final int index;
  AppInitial({required this.index}) : super(index: index);
}