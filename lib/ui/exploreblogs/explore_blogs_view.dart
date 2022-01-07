import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/get_blogs_model.dart';

import 'package:tamely/ui/feed/feed_view.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/global_methods.dart';
import 'package:tamely/util/styles.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/blogs_item.dart';

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
      onModelReady: (model) => model.onInit(),
      builder: (context, model, child) => Scaffold(
        appBar: commonAppBar(context, "Explore Blogs"),
        body: Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              children: [
                verticalSpaceSmall,
                ListView.separated(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: model.listOfBlogs.length,
                  itemBuilder: (context, index) => BlogItem(
                    blog: model.listOfBlogs[index],
                    isDetailView: false,
                  ),
                  separatorBuilder: (context, index) => spacedDividerSmall,
                ),
                verticalSpaceRegular,
                Visibility(
                  visible: model.isLoading,
                  child: CircularProgressIndicator(
                    color: colors.primary,
                  ),
                ),
                verticalSpaceRegular,
                Visibility(
                  visible: model.listOfBlogs.isNotEmpty,
                  child: Visibility(
                    visible: !model.isEndOfList,
                    child: Visibility(
                      visible: !model.isLoading,
                      child: GestureDetector(
                        onTap: () => model.getListOfBlogs(),
                        child: AppText.body1Bold(
                          "See more blogs",
                          color: colors.primary,
                        ),
                      ),
                    ),
                  ),
                ),
                verticalSpaceRegular,
              ],
            ),
          ),
        ),

        // body: SafeArea(
        //   child: Column(
        //     children: [
        //       Expanded(
        //         child: ListView(
        //           children: [
        //             Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: GestureDetector(
        //                 child: Container(
        //                   padding: EdgeInsets.all(10),
        //                   decoration: BoxDecoration(
        //                     border: Border.all(color: colors.kcGreyBackground),
        //                     borderRadius: BorderRadius.circular(20),
        //                   ),
        //                   child: Row(
        //                     children: [
        //                       Icon(
        //                         Icons.search,
        //                         color: colors.primary,
        //                       ),
        //                       horizontalSpaceSmall,
        //                       AppText.caption("Search for blog topics.")
        //                     ],
        //                   ),
        //                 ),
        //                 onTap: model.goToSearchView,
        //               ),
        //             ),
        //             Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 Padding(
        //                   padding: const EdgeInsets.symmetric(horizontal: 10),
        //                   child: Text(
        //                     "Newly Published",
        //                     style:
        //                         bodyStyle.copyWith(fontWeight: FontWeight.w600),
        //                   ),
        //                 ),
        //                 Padding(
        //                   padding: const EdgeInsets.all(8.0),
        //                   child: SizedBox(
        //                     height: 250,
        //                     child: ListView.separated(
        //                       scrollDirection: Axis.horizontal,
        //                       shrinkWrap: true,
        //                       itemCount: 4,
        //                       itemBuilder: (context, index) => GestureDetector(
        //                         child: rowPost(
        //                             model.listOfBlogs[index],
        //                             model.likedBlog(
        //                                 model.listOfBlogs[index].sId)),
        //                         onTap: () {
        //                           Navigator.push(
        //                             context,
        //                             MaterialPageRoute(
        //                               builder: (context) => BlogScreen(),
        //                               settings: RouteSettings(
        //                                 arguments: model.listOfBlogs[index],
        //                               ),
        //                             ),
        //                           );
        //                         },
        //                       ),
        //                       separatorBuilder:
        //                           (BuildContext context, int index) =>
        //                               horizontalSpaceSmall,
        //                     ),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //             spacedDividerSmall,
        //             Padding(
        //               padding: const EdgeInsets.symmetric(horizontal: 10),
        //               child: Text(
        //                 "Blogs for you",
        //                 style: bodyStyle.copyWith(fontWeight: FontWeight.w600),
        //               ),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: SizedBox(
        //                 height: 250,
        //                 child: ListView.separated(
        //                   scrollDirection: Axis.horizontal,
        //                   shrinkWrap: true,
        //                   itemCount: 4,
        //                   itemBuilder: (context, index) => GestureDetector(
        //                     onTap: () {
        //                       Navigator.push(
        //                         context,
        //                         MaterialPageRoute(
        //                           builder: (context) => BlogScreen(),
        //                           settings: RouteSettings(
        //                             arguments: model.listOfBlogs[index + 4],
        //                           ),
        //                         ),
        //                       );
        //                     },
        //                     child: rowPost(
        //                         model.listOfBlogs[index + 4],
        //                         model.likedBlog(
        //                             model.listOfBlogs[index + 4].sId)),
        //                   ),
        //                   separatorBuilder: (BuildContext context, int index) =>
        //                       horizontalSpaceSmall,
        //                 ),
        //               ),
        //             ),
        //             spacedDividerSmall,
        //             Padding(
        //               padding: const EdgeInsets.symmetric(horizontal: 10),
        //               child: Text(
        //                 "Trending",
        //                 style: bodyStyle.copyWith(fontWeight: FontWeight.w600),
        //               ),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: SizedBox(
        //                 height: 250,
        //                 child: ListView.separated(
        //                   scrollDirection: Axis.horizontal,
        //                   shrinkWrap: true,
        //                   itemCount: 2,
        //                   itemBuilder: (context, index) => GestureDetector(
        //                     onTap: () {
        //                       Navigator.push(
        //                         context,
        //                         MaterialPageRoute(
        //                           builder: (context) => BlogScreen(),
        //                           settings: RouteSettings(
        //                             arguments: model.listOfBlogs[index + 8],
        //                           ),
        //                         ),
        //                       );
        //                     },
        //                     child: rowPost(
        //                         model.listOfBlogs[index + 8],
        //                         model.likedBlog(
        //                             model.listOfBlogs[index + 8].sId)),
        //                   ),
        //                   separatorBuilder: (BuildContext context, int index) =>
        //                       horizontalSpaceSmall,
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}

// Widget rowPost(blogDetails blog, ExploreBlogsViewModel viewModel) {
//   return Card(
//     elevation: 0,
//     shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.all(Radius.circular(10))),
//     child: Container(
//       width: 300,
//       child: Column(
//         children: [
//           Container(
//             height: 150,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.all(Radius.circular(10)),
//               image: DecorationImage(
//                 image: NetworkImage(
//                   blog.thumbnail ?? emptyProfileImgUrl,
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
//             child: Align(
//                 alignment: Alignment.centerLeft,
//                 child: AppText.body(blog.title ?? "-")),
//           ),
//           Expanded(
//             child: Row(
//               children: [
//                 LikeBtn(
//                     initialState: ExploreBlogsViewModel().isLiked,
//                     onTap: () => viewModel.likedBlog(blog.sId ?? "")),
//                 AppText.body2("${blog.likes ?? 0}"),
//                 Spacer(),
//                 Padding(
//                     padding: const EdgeInsets.all(5.0),
//                     child: AppText.body1(
//                       GlobalMethods.utcToLocal(blog.date ?? ""),
//                       color: colors.kcLightGreyColor,
//                     ))
//               ],
//             ),
//           )
//         ],
//       ),
//     ),
//   );
// }
