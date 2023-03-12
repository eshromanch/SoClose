import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interview/main.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1a2530),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Image.asset('assets/profile.png'),
                ),
                SizedBox(height: 15),
                Text('Hey, Emoji',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Color(0xff707b81),
                        )),
                SizedBox(height: 4),
                Text(
                  'Alion Breaker',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ],
            ),
            Column(
              children: [
                ListTile(
                  onTap: () {
                    z.close?.call()?.then((value) {});
                  },
                  leading: SvgPicture.asset(
                    'assets/user.svg',
                    height: 20,
                    width: 20,
                    color: Colors.white,
                  ),
                  title: Text('Profile',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
                ListTile(
                  onTap: () {
                    z.close?.call()?.then((value) {});
                  },
                  leading: SvgPicture.asset(
                    'assets/house-window.svg',
                    height: 20,
                    width: 20,
                    color: Colors.white,
                  ),
                  title: const Text('Home Page',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
                ListTile(
                  leading: SvgPicture.asset(
                    'assets/bag.svg',
                    height: 20,
                    width: 20,
                    color: Colors.white,
                  ),
                  title: Text('My Cart',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
                ListTile(
                  onTap: () {
                    z.close?.call()?.then((value) {});
                  },
                  leading: SvgPicture.asset(
                    'assets/heart.svg',
                    height: 20,
                    width: 20,
                    color: Colors.white,
                  ),
                  title: Text('Favourite',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
                ListTile(
                  onTap: () {
                    z.close?.call()?.then((value) {});
                  },
                  leading: SvgPicture.asset(
                    'assets/truck.svg',
                    height: 20,
                    width: 20,
                    color: Colors.white,
                  ),
                  title: Text('Orders',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
                ListTile(
                  onTap: () {
                    z.close?.call()?.then((value) {});
                  },
                  leading: SvgPicture.asset(
                    'assets/bell.svg',
                    height: 20,
                    width: 20,
                    color: Colors.white,
                  ),
                  title: Text('Notification',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      )),
                ),
              ],
            ),
            Divider(
              // indent: 20,
              // endIndent: 170,
              color: Colors.white.withOpacity(0.2),
            ),
            ListTile(
              onTap: () {
                z.close?.call()?.then((value) {});
              },
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: Text('Sign Out',
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
