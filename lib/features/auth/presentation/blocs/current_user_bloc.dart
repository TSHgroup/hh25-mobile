import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:odpalgadke/common/injection/dependency_injection.dart';
import 'package:odpalgadke/features/auth/data/data_sources/auth_data_source.dart';
import 'package:odpalgadke/features/auth/data/models/user_model.dart';

part 'current_user_event.dart';
part 'current_user_state.dart';

class CurrentUserBloc extends Bloc<CurrentUserEvent, CurrentUserState> {
  CurrentUserBloc() : super(CurrentUserInitial()) {
    on<CurrentUserSet>((event, emit) {
      emit(CurrentUserLoadSuccess(event.user));
    });

    on<CurrentUserFetched>((event, emit) async {
      final data = await get<AuthDataSource>().fetchOwn();
      data.fold(
        (exception) {
          emit(CurrentUserLoadFailure(Exception(exception['error'])));
        },
        (data) {
          emit(CurrentUserLoadSuccess(data));
        },
      );
    });
  }
}
