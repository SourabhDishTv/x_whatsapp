import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:x_whatsapp/custom/theme_provider.dart';
import 'package:x_whatsapp/screens/calls.dart';
import 'package:x_whatsapp/screens/chats.dart';
import 'package:x_whatsapp/screens/otp.dart';
import 'package:x_whatsapp/screens/profile.dart';
import 'package:x_whatsapp/screens/updates.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  int currentPageIndex = 3;

  Widget getScreen() {
    if (currentPageIndex == 0) {
      return ChatsScreen();
    } else if (currentPageIndex == 1) {
      return UpdatesScreen();
    } else if (currentPageIndex == 2) {
      return OtpScreen();
    } else if (currentPageIndex == 3) {
      return Profile();
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    var theme = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp"),
        centerTitle: true,
        systemOverlayStyle: (Platform.isIOS)
            ? SystemUiOverlayStyle.light
            : const SystemUiOverlayStyle(
                statusBarColor: const Color.fromARGB(255, 158, 51, 51),
                statusBarIconBrightness: Brightness.light,
                statusBarBrightness: Brightness.light,
              ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: (theme.isDarkTheme) ? Colors.grey.shade900 : Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Center(child: getScreen()),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        //indicatorColor: Colors.amber,

        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.messenger_rounded),
            icon: Icon(Icons.messenger_outline_rounded),
            label: 'CHAT',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.tips_and_updates_rounded),
            icon: Badge(child: Icon(Icons.tips_and_updates_outlined)),
            label: 'UPDATES',
          ),
          NavigationDestination(
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.call),
            ),
            label: 'CALLS',
          ),
          NavigationDestination(
            icon: Badge(
              child: Icon(Icons.person_rounded),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
