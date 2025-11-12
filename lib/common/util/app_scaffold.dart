import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'back_with_text.dart';
import 'colors.dart';

class AppScaffold extends StatelessWidget {
  final List<Widget> children;
  final String? appBarText;
  final Widget? bottomNavigationBar;
  final ScrollController? scrollController;
  final Widget? floatingActionButton;
  final bool includeBackButtonInAppBar;
  final bool resizeToAvoidBottomInset;
  final AppBar? appBar;
  final Function()? onBackTap;

  const AppScaffold({
    super.key,
    required this.children,
    this.appBarText,
    this.bottomNavigationBar,
    this.scrollController,
    this.floatingActionButton,
    this.includeBackButtonInAppBar = true,
    this.resizeToAvoidBottomInset = false,
    this.appBar,
    this.onBackTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
      appBar:
          appBar ??
          (appBarText != null
              ? AppBar(
                  backgroundColor: primary,
                  toolbarHeight: 8.h,
                  leading: BackWithTextWidget(
                    onBackTap: onBackTap,
                    title: appBarText!,
                    includeBackButton: includeBackButtonInAppBar,
                  ),
                  leadingWidth: 100.w,
                )
              : null),
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: children,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
