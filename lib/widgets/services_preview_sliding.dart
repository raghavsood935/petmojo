import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tamely/ui/services/services_viewmodel.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/util/Color.dart';

class ServicesPreviewSliding extends StatefulWidget {
  final ServicesViewModel model;

  const ServicesPreviewSliding({required this.model, Key? key})
      : super(key: key);

  @override
  State<ServicesPreviewSliding> createState() => _ServicesPreviewSlidingState();
}

class _ServicesPreviewSlidingState extends State<ServicesPreviewSliding> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  List<Widget> serviceItems = [];
  @override
  void initState() {
    serviceItems = [
      FreeTraining(model: widget.model),
      FreeWalk(model: widget.model)
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            viewportFraction: 1.0,
            autoPlayInterval: Duration(seconds: 6),
            height: 200,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
          items: serviceItems,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: serviceItems.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 6.0, horizontal: 2.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class FreeWalk extends StatelessWidget {
  final ServicesViewModel model;
  const FreeWalk({
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => model.onServiceTap(0),
      child: Container(
          margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black38,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.bodyBig("Click here to get your"),
                  AppText.bodyBig(
                    "Free Dog Walking",
                    color: colors.primary,
                  ),
                  AppText.bodyBig("Trial today!"),
                  SizedBox(
                    height: 5,
                  ),
                  TextButton(
                      onPressed: () => model.onServiceTap(0),
                      child: AppText.bodyBold(
                        "Book FREE Trial",
                        color: colors.white,
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: colors.primary,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                      )),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Image(
                  image: AssetImage("assets/images/dog_walking_free.png"),
                ),
              )
            ],
          )),
    );
  }
}

class FreeTraining extends StatelessWidget {
  final ServicesViewModel model;
  const FreeTraining({
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => model.onServiceTap(1),
      child: Container(
          margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black38,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.bodyBig("Click here to get your"),
                  AppText.bodyBig(
                    "Free Dog Training",
                    color: colors.primary,
                  ),
                  AppText.bodyBig("Trial today!"),
                  SizedBox(
                    height: 5,
                  ),
                  TextButton(
                      onPressed: () => model.onServiceTap(1),
                      child: AppText.bodyBold(
                        "Book FREE Trial",
                        color: colors.white,
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: colors.primary,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                      )),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Image(
                  image: AssetImage("assets/images/free-training-image.png"),
                ),
              )
            ],
          )),
    );
  }
}
