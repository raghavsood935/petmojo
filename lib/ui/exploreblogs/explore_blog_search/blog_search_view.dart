import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/exploreblogs/blog_screen/blog_screen_view.dart';

import 'package:tamely/ui/feed/feed_view.dart';

import 'package:tamely/util/styles.dart';

import 'package:tamely/widgets/search_text_field.dart';

import '../explore_blogs_viewmodel.dart';
import 'blog_search_viewmodel.dart';

class BlogSerachView extends StatefulWidget {
  const BlogSerachView({Key? key}) : super(key: key);

  @override
  _BlogSerachViewState createState() => _BlogSerachViewState();
}

class _BlogSerachViewState extends State<BlogSerachView> {
  @override
  Widget build(BuildContext context) {
    List<Map> blogcards = ExploreBlogsViewModel().vidoes;

    return ViewModelBuilder<BlogSerachViewModel>.reactive(
      viewModelBuilder: () => BlogSerachViewModel(),
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
              "Search results",
              style: heading3Style.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          body: Container(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                    child: SearchTextField(
                  controller: model.searchTC,
                  hint: "Search for blog topics.",
                  onChange: model.onSearchChange,
                )),
                Expanded(
                  child: ListView.builder(
// scrollDirection: Axis.horizontal,
                      itemCount: blogcards.length,
                      itemBuilder: (context, index) {
                        Map vido = blogcards[index];

                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlogScreen(),
                                settings: RouteSettings(
                                  arguments: vido,
                                ),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            height: 250,
                            width: 300,
                            child: Card(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      height: 150,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            "${blogcards[index]['thumbnail']}",
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 5),
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
                                              initialState:
                                                  ExploreBlogsViewModel()
                                                      .isLiked,
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
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          )),
    );
  }
}
