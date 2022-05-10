import 'package:flutter/material.dart';
import 'package:slbfe/screens/login.dart';

class SideBar extends StatelessWidget {
  const SideBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
          accountName:  Text("Sri Lanka Bureau of Foreign Employment",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),),
          accountEmail:  Text("infor_center@slbfe.lk",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ))
          
          ),
          //Creating profile in side bar
          ListTile(
            leading: const Icon(Icons.reviews),
            title: const Text('Review us'),
            // ignore: avoid_print
            onTap: () {},
          ),
          const Divider(),
          //Creating Help in side bar
          ListTile(
            leading: const Icon(Icons.help_outline_rounded),
            title: const Text('About us'),
            // ignore: avoid_print
            onTap: () {},
          ),
          //Creating contact us in side bar
          ListTile(
            leading: const Icon(Icons.support_agent_outlined),
            title: const Text('Contact us'),
            // ignore: avoid_print
            onTap: () {},
          ),
          //Creating Terms & conditions in side bar
          ListTile(
            leading: const Icon(Icons.description_outlined),
            title: const Text('Terms & Conditions'),
            // ignore: avoid_print
            onTap: () {},
          ),
          const Divider(),
          //Creating Logout in side bar
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            // ignore: avoid_print
            onTap: () => Navigator.pushReplacement(
                (context),
                MaterialPageRoute(
                  builder: ((context) => const LoginScreen()),
                )),
          ),
        ],
      ),
    );
  }
}