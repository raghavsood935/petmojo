import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tamely/ui/services/services_viewmodel.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/util/Color.dart';

class ServicesPreviewSliding extends StatelessWidget {
  final ServicesViewModel model;
  const ServicesPreviewSliding({required this.model, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        options: CarouselOptions(
          viewportFraction: 1.0,
          autoPlayInterval: Duration(seconds: 8),
          height: 200,
          autoPlay: true,
        ),
        items: [FreeTraining(model: model), FreeWalk(model: model)]);
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
