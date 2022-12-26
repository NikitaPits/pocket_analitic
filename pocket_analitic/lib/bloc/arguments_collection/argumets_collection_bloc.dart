import 'package:bloc/bloc.dart';


part 'argumets_collection_event.dart';
part 'argumets_collection_state.dart';

class ArgumetsCollectionBloc extends Bloc<ArgumetsCollectionEvent, ArgumetsCollectionState> {
  ArgumetsCollectionBloc() : super(ArgumetsCollectionInitial()) {
    on<ArgumetsCollectionEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
