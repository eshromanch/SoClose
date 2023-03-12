import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

import 'package:interview/pages/widgets/chip_list.dart';
import 'package:interview/pages/widgets/rotate_img.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key, required this.tagNumber});

  final int tagNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.navigate_before),
        ),
        title: const Text('Mens Shoe'),
        centerTitle: true,
        actions: [
          SvgPicture.asset('assets/cart.svg'),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: ListView(
            children: [
              // Stack(
              //   children: [
              //     Hero(
              //         tag: tagNumber.toString(),
              //         child:
              //             Center(child: Image.asset('assets/shoes/shoe4.png'))),
              //   ],
              // ),
              RotatingImage(
                imageUrl: 'assets/shoes/shoe4.png',
              ),
              // RotatingImage(),
              // RotatableImage(),
              Text(
                'Best Seller'.toUpperCase(),
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: const Color(0xff5b9ee1),
                    ),
              ),
              Text(
                'Nike Air Jordan',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: const Color(0xff1a2530),
                      fontWeight: FontWeight.w700,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 4,
                ),
                child: Text(
                  '\$967.800',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: const Color(0xff1a2530),
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.2,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 50,
                ),
                child: Text(
                  'Air Jordan is an American brand of basketball shoes athletic, casual, and style clothing produced by Nike....',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Colors.grey.withOpacity(0.7),
                        // fontWeight: FontWeight.w700,
                        letterSpacing: 0.2,
                      ),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                'Gallary',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: const Color(0xff1a2530),
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 40,
                child: ListView.builder(
                  itemBuilder: (c, i) => Center(
                    child: Image.asset(
                      'assets/shoes/shoe${i + 1}.png',
                      // width: 200,
                      height: 200,
                    ),
                  ),
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Size',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: const Color(0xff1a2530),
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          'EU',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Text('Uk'),
                        const SizedBox(width: 5),
                        const Text('US'),
                      ],
                    ),
                  )
                ],
              ),
              const ChoiceSizeList(
                options: [38, 39, 40, 41, 42, 43, 44],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: Colors.white,
        // color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Price',
                  style: TextStyle(
                    color: Color(0xff707b81),
                  ),
                ),
                Text(
                  '\$849.69',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(160, 60),
                backgroundColor: const Color(0xff5B9EE1),
              ),
              onPressed: () {},
              child: Text('Add To cart',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                      )),
            ),
          ],
        ),
      ),
    );
  }
}

// class RotatingImage extends StatefulWidget {
//   const RotatingImage({super.key});

//   @override
//   _RotatingImageState createState() => _RotatingImageState();
// }

// class _RotatingImageState extends State<RotatingImage>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: Duration(seconds: 5),
//       vsync: this,
//     )..repeat();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Transform(
//         alignment: Alignment.center,
//         transform: Matrix4.rotationY(_controller.value * 2 * math.pi),
//         child: Image.asset('assets/shoes/shoe4.png'),
//       ),
//     );
//   }
// }

// class RotatableImage extends StatefulWidget {
//   @override
//   _RotatableImageState createState() => _RotatableImageState();
// }

// class _RotatableImageState extends State<RotatableImage> {
//   double _rotation = 0.0;
//   double _previousRotation = 0.0;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onScaleStart: (details) {
//         _previousRotation = _rotation;
//       },
//       onScaleUpdate: (details) {
//         setState(() {
//           _rotation = _previousRotation + details.rotation;
//         });
//       },
//       child: Center(
//         child: Transform.rotate(
//           angle: _rotation,
//           child: Image.asset('assets/shoes/shoe4.png'),
//         ),
//       ),
//     );
//   }
// }
