import 'package:bloc/bloc.dart';

part 'arguments_list_event.dart';
part 'arguments_list_state.dart';

class ArgumentsListBloc extends Bloc<ArgumentsListEvent, ArgumentsListState> {
  ArgumentsListBloc() : super(ArgumentsListInitial()) {
    on<ArgumentsListEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
