import 'package:odpalgadke/common/injection/dependency_injection.dart';
import 'package:odpalgadke/features/auth/data/models/user_model.dart';
import 'package:odpalgadke/features/auth/presentation/blocs/current_user_bloc.dart';

UserModel? get currentUser {
  CurrentUserBloc bloc = get();
  if (bloc.state is CurrentUserLoadSuccess) {
    return (bloc.state as CurrentUserLoadSuccess).user;
  }

  return null;
}
