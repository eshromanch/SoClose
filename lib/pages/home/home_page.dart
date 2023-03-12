import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interview/main.dart';
import 'package:interview/pages/detail/details.dart';
import 'package:interview/pages/widgets/chip_list.dart';
import 'package:page_transition/page_transition.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            z.toggle!();
            // ZoomDrawerController().toggle!();
            // AwesomeDrawerBar.of(context)?.toggle();
          },
          child: SvgPicture.asset(
            'assets/drawer.svg',
          ),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Store Location',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: Colors.grey.withOpacity(0.7)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.location_on,
                  color: Colors.red,
                  size: 15,
                ),
                Text(
                  'Mondolibug, Sylhet',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Stack(
            children: [
              SvgPicture.asset('assets/cart.svg'),
              const Positioned(
                top: 2,
                right: 2,
                child: CircleAvatar(
                  backgroundColor: Color(0xffF87265),
                  radius: 4,
                ),
              ),
            ],
          ),
        ],
      ),
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 15,
              ),
              child: TextField(
                decoration: InputDecoration(
                  icon: SvgPicture.asset('assets/search.svg'),
                  border: InputBorder.none,
                  hintText: 'Looking for shoes',
                ),
              ),
            ),
            const SizedBox(
              height: 80,
              child: ChipListView(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Padding>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Popular Shoes',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: const Color(0xff1a2530),
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (c, i) {
                  // if (i%2==0) {
                  //
                  //                   }
                  return Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (_) => DetailProduct(tagNumber: i)));
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              alignment: Alignment.bottomCenter,
                              child: DetailProduct(tagNumber: i),
                            ),
                          );
                        },
                        child: Card(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Hero(
                                tag: i.toString(),
                                child: Image.asset('assets/shoes/shoe1.png'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  'BEST SELLER',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge
                                      ?.copyWith(
                                        color: const Color(0xff5b9ee1),
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  'Nike Jorden',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                        color: const Color(0xff1a2530),
                                        fontWeight: FontWeight.w700,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                  top: 8,
                                ),
                                child: Text(
                                  '\$493.00',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0xff1a2530),
                                        letterSpacing: 0.2,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 3,
                        right: 4,
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: FloatingActionButton.small(
                              backgroundColor: const Color(0xff5B9EE1),
                              elevation: 0,
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
                scrollDirection: Axis.horizontal,
              ),
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'New Arrivals',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: const Color(0xff1a2530),
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Best Choise'.toUpperCase(),
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              color: const Color(0xff5b9ee1),
                            ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 8,
                          top: 2,
                        ),
                        child: Text(
                          'Nike Air Jorden',
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff1a2530),
                                    letterSpacing: 0.2,
                                  ),
                        ),
                      ),
                      Text(
                        '\$849.69',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff1a2530),
                              letterSpacing: 0.2,
                            ),
                      )
                    ],
                  ),
                  Image.asset(
                    'assets/shoes/shoe3.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff5B9EE1),
        // highlightElevation: 23,
        elevation: 8,
        foregroundColor: const Color(0xff5b9ee1),

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: SvgPicture.asset(
          'assets/cart2.svg',
          color: Colors.white,
          // colorFilter: ColorFilter.mode(
          //   Colors.black,
          //   BlendMode.src,
          // ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        backgroundGradient: LinearGradient(
          colors: [
            Colors.transparent,
            const Color(0xff5B9EE1).withOpacity(0.1),
            Colors.transparent,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0.3, 0.5, 0.7],
        ),
        icons: <IconData>[
          CupertinoIcons.home,
          CupertinoIcons.heart,
          Icons.notifications_outlined,
          CupertinoIcons.person,
        ],
        activeIndex: 0,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        // leftCornerRadius: 32,
        // rightCornerRadius: 32,
        onTap: (i) {},
        // onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
    );
  }
}
