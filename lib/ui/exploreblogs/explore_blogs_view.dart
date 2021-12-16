import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';

import 'package:tamely/ui/feed/feed_view.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/styles.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

import 'blog_screen/blog_screen_view.dart';
import 'explore_blogs_viewmodel.dart';

class ExploreBlogs extends StatefulWidget {
  const ExploreBlogs({Key? key}) : super(key: key);

  @override
  _ExploreBlogsState createState() => _ExploreBlogsState();
}

class _ExploreBlogsState extends State<ExploreBlogs> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ExploreBlogsViewModel>.reactive(
      viewModelBuilder: () => ExploreBlogsViewModel(),
      builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            elevation: 0.5,
            backgroundColor: Colors.white,
            centerTitle: true,
            leading: IconButton(
                padding: const EdgeInsets.all(0),
                icon: SvgPicture.asset(
                  "assets/images/backbutton.svg",
                  height: 20,
                  width: 30,
                ),
                onPressed: () => Navigator.pop(context)),
            title: Text(
              "Explore Blogs",
              style: heading3Style.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: colors.kcGreyBackground),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  color: colors.primary,
                                ),
                                horizontalSpaceSmall,
                                AppText.caption("Search for blog topics.")
                              ],
                            ),
                          ),
                          onTap: model.goToSearchView,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Newly Published",
                              style: bodyStyle.copyWith(
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 250,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: 4,
                                itemBuilder: (context, index) =>
                                    GestureDetector(
                                  child: rowPost(model.vidoes[index]),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => BlogScreen(),
                                        settings: RouteSettings(
                                          arguments: model.vidoes[index],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                separatorBuilder:
                                    (BuildContext context, int index) =>
                                        horizontalSpaceSmall,
                              ),
                            ),
                          ),
                        ],
                      ),
                      spacedDividerSmall,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Blogs for you",
                          style:
                              bodyStyle.copyWith(fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 250,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 4,
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BlogScreen(),
                                    settings: RouteSettings(
                                      arguments: model.vidoes[index + 4],
                                    ),
                                  ),
                                );
                              },
                              child: rowPost(
                                model.vidoes[index + 4],
                              ),
                            ),
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    horizontalSpaceSmall,
                          ),
                        ),
                      ),
                      spacedDividerSmall,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Trending",
                          style:
                              bodyStyle.copyWith(fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 250,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 2,
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BlogScreen(),
                                    settings: RouteSettings(
                                      arguments: model.vidoes[index + 8],
                                    ),
                                  ),
                                );
                              },
                              child: rowPost(
                                model.vidoes[index + 8],
                              ),
                            ),
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    horizontalSpaceSmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

Widget rowPost(vido) {
  return Card(
    elevation: 0,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: Container(
      width: 300,
      child: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                image: NetworkImage(
                  "${vido['thumbnail']}",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "${vido['title']}",
                style: bodyStyle,
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                LikeBtn(
                    initialState: ExploreBlogsViewModel().isLiked,
                    onTap: () {}),
                Text(
                  '${vido['hearts']}',
                  style: body2Style,
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    '${vido['date']}',
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
