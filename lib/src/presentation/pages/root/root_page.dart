// lib/src/presentation/pages/root/root_page.dart
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:edufy_mobile/src/shared/configs/export.dart';

// tabs
import 'tabs/home/home_tab.dart';
import 'tabs/discover/discover_tab.dart';
import 'tabs/course/course_tab.dart';
import 'tabs/profile/profile_tab.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  late final PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<PersistentTabConfig> _buildTabs() {
    return [
      PersistentTabConfig(
        screen: const HomeTab(),
        item: ItemConfig(
          icon: const Icon(Icons.home_rounded),
          title: 'Trang chủ',
          activeForegroundColor: AppColors.primary,
          inactiveForegroundColor: AppColors.textMuted,
        ),
      ),
      PersistentTabConfig(
        screen: const DiscoverTab(),
        item: ItemConfig(
          icon: const Icon(Icons.explore_rounded),
          title: 'Khám phá',
          activeForegroundColor: AppColors.primary,
          inactiveForegroundColor: AppColors.textMuted,
        ),
      ),
      PersistentTabConfig(
        screen: const CourseTab(),
        item: ItemConfig(
          icon: const Icon(Icons.menu_book_rounded),
          title: 'Khoá học',
          activeForegroundColor: AppColors.primary,
          inactiveForegroundColor: AppColors.textMuted,
        ),
      ),
      PersistentTabConfig(
        screen: const ProfileTab(),
        item: ItemConfig(
          icon: const Icon(Icons.person_rounded),
          title: 'Tài khoản',
          activeForegroundColor: AppColors.primary,
          inactiveForegroundColor: AppColors.textMuted,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      controller: _controller,
      tabs: _buildTabs(),
      navBarBuilder: (navBarConfig) => Style1BottomNavBar(
        navBarConfig: navBarConfig,
        navBarDecoration: const NavBarDecoration(
          color: Colors.white,
        ),
      ),
      backgroundColor: AppColors.background,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
    );
  }
}
