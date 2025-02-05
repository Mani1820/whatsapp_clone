import 'package:clone_whatsapp/Screens/linked_device_screen.dart';
import 'package:clone_whatsapp/Screens/settings/setting_screen.dart';
import 'package:clone_whatsapp/Screens/starred_messages.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 4, 135, 109),
          title: Text(
            'WhatsApp',
            style: GoogleFonts.robotoFlex(
              textStyle: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.dark_mode_sharp,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            PopupMenuButton(
              onSelected: (value) {
                if (value == 'Linked devices') {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const LinkedDeviceScreen(),
                    ),
                  );
                }

                if (value == 'Starred messages') {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const StarredMessages(),
                    ),
                  );
                }
                if (value == 'Settings') {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const SettingScreen(),
                    ),
                  );
                }
              },
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              itemBuilder: (BuildContext context) {
                return {
                  'New Group',
                  'New Podcast',
                  'Lined devices',
                  'Starred messages',
                  'Payments',
                  'Settings'
                }.map(
                  (String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(
                        choice,
                      ),
                    );
                  },
                ).toList();
              },
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                iconMargin: EdgeInsets.all(50),
                icon: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.chat,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Chat',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.contacts,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Staus',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Calls',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Camera View')),
            Center(child: Text('Chats View')),
            Center(child: Text('Status View')),
            Center(child: Text('Settings View')),
          ],
        ),
      ),
    );
  }
}
