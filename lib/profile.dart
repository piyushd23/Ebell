import 'package:flutter/material.dart';
import 'account_screen.dart';
import 'device_setting.dart';
import 'app_setting.dart';
import 'app_info.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  // Method to show the bottom sheet for switching accounts
  void _showSwitchAccountBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Switch Profile',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildDeviceOption(
                    context,
                    label: 'Device 1',
                    onTap: () {
                      // Handle Device 1 selection
                      Navigator.pop(context);
                    },
                  ),
                  _buildDeviceOption(
                    context,
                    label: 'Device 2',
                    onTap: () {
                      // Handle Device 2 selection
                      Navigator.pop(context);
                    },
                  ),
                  _buildDeviceOption(
                    context,
                    label: 'Device 3',
                    onTap: () {
                      // Handle Device 3 selection
                      Navigator.pop(context);
                    },
                  ),
                  _buildAddNewDeviceOption(
                    context,
                    onTap: () {
                      // Handle Add new device action
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }

  // Widget for each device option
  Widget _buildDeviceOption(BuildContext context, {required String label, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.yellow[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.device_unknown, // Placeholder for the bell icon
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          Text(label),
        ],
      ),
    );
  }

  // Widget for the "Add new device" option
  Widget _buildAddNewDeviceOption(BuildContext context, {required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          const Text('Add new device'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'E-Bell',
          style: TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.grey[100],
        child: Column(
          children: [
            // Device 1 and Switch Account Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.yellow[300],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.device_unknown, // Placeholder for the bell icon
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Device 1',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _showSwitchAccountBottomSheet(context);
                        },
                        child: const Text(
                          'Switch Account',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 16,
                  ),
                ],
              ),
            ),
            // List of Options (No Divider)
            Expanded(
              child: ListView(
                children: [
                  _buildListTile(
                    context,
                    icon: Icons.account_circle_outlined,
                    title: 'Account',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AccountScreen(),
                        ),
                      );
                    },
                  ),
                  _buildListTile(
                    context,
                    icon: Icons.devices_outlined,
                    title: 'Device Setting',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DeviceSettingScreen(),
                        ),
                      );
                    },
                  ),
                  _buildListTile(
                    context,
                    icon: Icons.settings_outlined,
                    title: 'App Setting',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AppSettingScreen(),
                        ),
                      );
                    },
                  ),
                  // _buildListTile(
                  //   context,
                  //   icon: Icons.help_outline,
                  //   title: 'Help & Privacy',
                  //   onTap: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => const HelpPrivacyScreen(),
                  //       ),
                  //     );
                  //   },
                  // ),
                  _buildListTile(
                    context,
                    icon: Icons.info_outline,
                    title: 'App Info',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AppInfoScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2, // Profile is selected
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Planner',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          // Handle navigation for Planner and Library if needed
        },
      ),
    );
  }

  Widget _buildListTile(BuildContext context, {required IconData icon, required String title, required VoidCallback onTap}) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.orange, width: 1.5),
        ),
        child: Icon(
          icon,
          color: Colors.orange,
          size: 24,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.grey,
        size: 16,
      ),
      onTap: onTap,
    );
  }
}