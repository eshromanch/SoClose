import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interview/models/chip_model.dart';

class ChipListView extends StatefulWidget {
  const ChipListView({
    super.key,
  });

  @override
  State<ChipListView> createState() => _ChipListViewState();
}

class _ChipListViewState extends State<ChipListView> {
  int tag = 0;
  List<ChipModel> options = [
    ChipModel(title: 'Nike', logo: 'assets/nike.svg'),
    ChipModel(title: 'Puma', logo: 'assets/logo/puma.svg'),
    ChipModel(title: 'IDK', logo: 'assets/logo/who.svg'),
    ChipModel(title: 'Adidas', logo: 'assets/logo/adidas.svg'),
    ChipModel(title: 'Converse', logo: 'assets/logo/converse.svg'),
  ];
  @override
  Widget build(BuildContext context) {
    return ChipsChoice.single(
      direction: Axis.horizontal,
      scrollPhysics: const BouncingScrollPhysics(),
      value: tag,
      onChanged: (val) {
        // setState(() {
        //   tag = val;
        // });
      },
      // choiceLoader: () {
      //
      //       },
      choiceBuilder: (item, i) => InkWell(
        onTap: () {
          setState(() {
            tag = i;
          });
        },
        child: AnimatedContainer(
          margin: const EdgeInsets.only(right: 10),
          padding: const EdgeInsets.only(right: 10),
          duration: const Duration(
            milliseconds: 700,
          ),
          decoration: BoxDecoration(
              color: item.selected ? const Color(0xff5B9EE1) : null,
              borderRadius: BorderRadius.circular(50)
              // shape: const RoundedRectangleBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
          // margin: EdgeInsets.all(8),
          child: !item.selected
              ? SvgPicture.asset(
                  options.elementAt(i).logo,
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 8,
                        ),
                        child: CircleAvatar(
                          child: SvgPicture.asset(
                            options.elementAt(i).logo,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(options.elementAt(i).title,
                          style:
                              Theme.of(context).textTheme.labelLarge?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  )),
                    ],
                  ),
                ),
        ),
      ),

      choiceItems: C2Choice.listFrom<int, ChipModel>(
        source: options,
        value: (i, v) => i,
        label: (i, v) => v.title,
      ),
    );
  }
}

class ChoiceSizeList extends StatefulWidget {
  const ChoiceSizeList({
    super.key,
    required this.options,
  });

  final List<int> options;

  @override
  State<ChoiceSizeList> createState() => _ChoiceSizeListState();
}

class _ChoiceSizeListState extends State<ChoiceSizeList> {
  int tag = 0;
  @override
  Widget build(BuildContext context) {
    return ChipsChoice.single(
      direction: Axis.horizontal,
      scrollPhysics: const BouncingScrollPhysics(),
      value: tag,
      onChanged: (val) {
        // setState(() {
        //   tag = val;
        // });
      },
      // choiceLoader: () {
      //
      //       },
      choiceBuilder: (item, i) => AnimatedContainer(
        // margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.only(right: 10),
        duration: const Duration(
          milliseconds: 700,
        ),
        color: Colors.transparent,
        // margin: EdgeInsets.all(8),
        child: !item.selected
            ? FloatingActionButton.small(
                elevation: 0,
                hoverElevation: 0,

                backgroundColor: Colors.white,
                // backgroundColor: Color(0xff707b81).withOpacity(0.1),
                onPressed: () {
                  setState(() {
                    tag = i;
                  });
                },
                child: Text(
                  '${widget.options.elementAt(i)}',
                  style: TextStyle(
                    color: Color(0xff707b81),
// 707b81
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
              )
            : FloatingActionButton.small(
                elevation: 0,
                backgroundColor: Color(0xff5B9EE1),
                onPressed: () {
                  setState(() {
                    tag = i;
                  });
                },
                child: Text(
                  '${widget.options.elementAt(i)}',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
      ),

      choiceItems: C2Choice.listFrom<int, int>(
        source: widget.options,
        value: (i, v) => i,
        label: (i, v) => v.toString(),
      ),
    );
  }
}
