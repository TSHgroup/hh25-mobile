import 'package:odpalgadke/features/auth/presentation/blocs/current_user.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('OdpalGadkę'),
      subtitle: Text('Witaj, ${currentUser!.account.name.givenName}'),
      leading: [
        Avatar(
          backgroundColor: Colors.red,
          initials: Avatar.getInitials('sunarya-thito'),
          provider: const NetworkImage(
            'https://avatars.githubusercontent.com/u/64018564?v=4',
          ),
          badge: AvatarBadge(size: 14.sp, color: Colors.green),
        ),
      ],
    );
  }
}
