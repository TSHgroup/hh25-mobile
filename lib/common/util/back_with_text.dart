import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BackWithTextWidget extends StatelessWidget {
  final String title;
  final Widget? ending;
  final bool includeBackButton;
  final bool addBackButtonBackground;
  final Function()? onBackTap;

  const BackWithTextWidget({
    super.key,
    required this.title,
    this.ending,
    this.includeBackButton = true,
    this.addBackButtonBackground = false,
    this.onBackTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              if (!includeBackButton)
                Padding(
                  padding: EdgeInsets.only(left: 12.sp),
                  child: Icon(Icons.online_prediction, color: Colors.redAccent),
                ),
              if (includeBackButton) ...[
                if (addBackButtonBackground) ...[
                  GestureDetector(
                    onTap: () => context.pop(),
                    behavior: HitTestBehavior.opaque,
                    child: Container(
                      margin: EdgeInsets.only(left: 1.w),
                      padding: EdgeInsets.all(12.sp),
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IconTheme(
                        data: IconThemeData(color: Colors.white),
                        child: _buildBackButtonIcon(context),
                      ),
                    ),
                  ),
                ] else
                  GestureDetector(
                    onTap: () => onBackTap?.call() ?? context.pop(),
                    child: _buildBackButtonIcon(context),
                  ),
              ] else ...[
                SizedBox(width: 4.w),
              ],
              SizedBox(
                width: ending == null
                    ? ((includeBackButton) ? 80.w : 92.w)
                    : 75.w,
                child: Text(
                  title,
                  style: GoogleFonts.lato(
                    fontSize: 19.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          if (ending != null) ending!,
        ],
      ),
    );
  }

  Widget _buildBackButtonIcon(BuildContext context) {
    IconData icon;
    switch (Theme.of(context).platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        icon = Icons.arrow_back;
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        icon = Icons.arrow_back_ios_new_rounded;
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.5.w),
      child: Icon(icon, size: 20.sp),
    );
  }
}
