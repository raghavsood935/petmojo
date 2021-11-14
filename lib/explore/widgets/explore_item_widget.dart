import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tamely/gen_assets/assets.gen.dart';

enum ExploreType {
  SINGLE_IMAGE,
  MULTI_IMAGE,
  VIDEO,
}

class ExploreItemWidget extends StatelessWidget {
  final String thumbnailUrl;
  final ExploreType type;

  const ExploreItemWidget(this.thumbnailUrl, this.type);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          AspectRatio(
              aspectRatio: 1,
              child: CachedNetworkImage(
                  imageUrl: thumbnailUrl, fit: BoxFit.cover)),
          Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.all(4.0),
            child: _exploreItem(),
          )
        ],
      ),
    );
  }

  Widget _exploreItem() {
    if (type == ExploreType.MULTI_IMAGE) {
      return Assets.images.icMulti
          .svg(width: 20, height: 20, color: Colors.white);
    } else if (type == ExploreType.VIDEO) {
      return Assets.images.icPlay
          .svg(width: 20, height: 20, color: Colors.white);
    } else {
      return SizedBox();
    }
  }
}
