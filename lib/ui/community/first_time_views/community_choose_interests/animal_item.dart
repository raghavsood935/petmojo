import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kubelite/ui/community/first_time_views/community_choose_interests/community_choose_interests_view_model.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/util/String.dart';
import 'package:kubelite/util/ui_helpers.dart';
import 'package:kubelite/widgets/app_text.dart';

class AnimalItem extends StatefulWidget {
  AnimalItem({
    Key? key,
    required this.animal,
  }) : super(key: key);

  Animal animal;

  bool isOpen = false;

  @override
  _AnimalItemState createState() => _AnimalItemState();
}

class _AnimalItemState extends State<AnimalItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: colors.kcLightGreyColor,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: GestureDetector(
        child: widget.isOpen
            ? SelectedItem(
                animal: widget.animal,
              )
            : UnSelectedItem(
                name: widget.animal.name,
                imagePath: widget.animal.imgPath,
              ),
        onTap: () {
          setState(() {
            widget.isOpen = !widget.isOpen;
          });
          widget.animal.changeOpenedState();
        },
      ),
    );
  }
}

class UnSelectedItem extends StatelessWidget {
  const UnSelectedItem({Key? key, required this.name, required this.imagePath})
      : super(key: key);

  final String name;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        height: 125,
        color: colors.black,
        width: halfScreenWidth(context),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              left: 0,
              child: ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                          colors: [Colors.transparent, colors.black],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter)
                      .createShader(
                    Rect.fromLTRB(0, 0, rect.width, rect.height),
                  );
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              right: 0,
              left: 0,
              child: AppText.body2(
                name,
                color: colors.white,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SelectedItem extends StatefulWidget {
  SelectedItem({Key? key, required this.animal}) : super(key: key);

  Animal animal;

  @override
  _SelectedItemState createState() => _SelectedItemState();
}

class _SelectedItemState extends State<SelectedItem> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        height: 268,
        color: colors.black,
        width: halfScreenWidth(context),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                          colors: [Colors.transparent, colors.black],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter)
                      .createShader(
                    Rect.fromLTRB(0, 0, rect.width, rect.height),
                  );
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  widget.animal.imgPath,
                  fit: BoxFit.fitWidth,
                  height: 75,
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 10,
              child: AppText.body2(
                widget.animal.name,
                color: colors.white,
              ),
            ),
            Positioned(
              top: 40,
              right: 10,
              child: Icon(
                Icons.check_box,
                color: colors.primary,
                size: 20,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                color: colors.white,
                height: 193,
                padding: EdgeInsets.only(top: 5),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: widget.animal.subTypes.length,
                  itemBuilder: (context, index) => AnimalSubListTile(
                    animalSubTitle: widget.animal.subTypes[index],
                    isSelected: widget.animal.subTypes[index].isSelected,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnimalSubListTile extends StatefulWidget {
  AnimalSubListTile(
      {Key? key, required this.animalSubTitle, required this.isSelected})
      : super(key: key);

  AnimalSubTitle animalSubTitle;
  bool isSelected = false;

  @override
  _AnimalSubListTileState createState() => _AnimalSubListTileState();
}

class _AnimalSubListTileState extends State<AnimalSubListTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
        decoration: BoxDecoration(
          border: Border.all(
            color: widget.isSelected ? colors.primary : colors.kcLightGreyColor,
          ),
          borderRadius: BorderRadius.circular(10),
          color: widget.isSelected ? colors.primary : colors.white,
        ),
        child: Row(
          children: [
            Image.asset(
              petImgPath,
              width: 20,
              height: 20,
            ),
            AppText.caption(
              widget.animalSubTitle.name,
              color: colors.black,
            ),
          ],
        ),
      ),
      onTap: () {
        setState(() {
          widget.isSelected = !widget.isSelected;
        });
        widget.animalSubTitle.changeSelectState();
      },
    );
  }
}
