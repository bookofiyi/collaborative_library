import 'package:collab_library/logic/colors.dart';
import 'package:collab_library/screens/downloads.dart';
import 'package:collab_library/screens/main_page.dart';
import 'package:collab_library/screens/profile.dart';
import 'package:collab_library/screens/upload_video.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

BuildContext? testContext;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PersistentTabController _controller;
  late bool _hideNavBar;

  @override
  void initState() {
    _controller = PersistentTabController();
    _hideNavBar = false;
    super.initState();
  }

  List<Widget> _buildScreens() => [
        MainPage(
          hideStatus: _hideNavBar,
          onScreenHideButtonPressed: () {
            setState(() {
              _hideNavBar = !_hideNavBar;
            });
          },
        ),
        DownloadsPage(
          hideStatus: _hideNavBar,
          onScreenHideButtonPressed: () {
            setState(() {
              _hideNavBar = !_hideNavBar;
            });
          },
        ),
        ProfilePage(
          hideStatus: _hideNavBar,
          onScreenHideButtonPressed: () {
            setState(() {
              _hideNavBar = !_hideNavBar;
            });
          },
        ),
      ];

  List<PersistentBottomNavBarItem> _navBarItems() => [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home_rounded),
          title: 'Home',
          activeColorPrimary: AppColor.primaryColor,
          inactiveColorPrimary: AppColor.disacbleColor,
          inactiveColorSecondary: AppColor.gray200Color,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.download_rounded),
          title: 'Downloads',
          activeColorPrimary: AppColor.primaryColor,
          inactiveColorPrimary: AppColor.disacbleColor,
          inactiveColorSecondary: AppColor.gray200Color,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.person_2_rounded),
          title: 'Profile',
          activeColorPrimary: AppColor.primaryColor,
          inactiveColorPrimary: AppColor.disacbleColor,
          inactiveColorSecondary: AppColor.gray200Color,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: ((context) {
                return Wrap(
                  children: [
                    const ListTile(title: Text('Type of resource')),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const UploadVideo())));
                      },
                      child: const ListTile(
                        leading: Icon(Icons.video_camera_back_rounded),
                        title: Text('Video'),
                        subtitle: Text('Supported file types: mp4, mkv'),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(Icons.edit_document),
                      title: Text('Document'),
                      subtitle: Text('Supported file types: docx, pdf'),
                    ),
                    const ListTile(
                      leading: Icon(Icons.audiotrack_rounded),
                      title: Text('Audio'),
                      subtitle: Text('Supported file types: mp3, 3gpp'),
                    ),
                  ],
                );
              }));
        },
        splashColor: AppColor.primaryColor,
        focusColor: AppColor.primaryColor,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarItems(),
        resizeToAvoidBottomInset: true,
        navBarHeight: MediaQuery.of(context).size.height * 0.08,
        bottomScreenMargin: 0,
        // onWillPop: (final context) async {
        //   await showDialog(
        //     context: context!,
        //     useSafeArea: true,
        //     builder: (final context) => Container(
        //       height: 50,
        //       width: 50,
        //       color: Colors.white,
        //       child: ElevatedButton(
        //         child: const Text('Close'),
        //         onPressed: () {
        //           Navigator.pop(context);
        //         },
        //       ),
        //     ),
        //   );
        //   return false;
        // },
        selectedTabScreenContext: (final context) {
          testContext = context;
        },
        backgroundColor: Colors.white,
        hideNavigationBar: _hideNavBar,
        decoration:
            const NavBarDecoration(colorBehindNavBar: AppColor.primaryColor),
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
        ),
        navBarStyle: NavBarStyle.style6,
      ),
    );
  }
}
