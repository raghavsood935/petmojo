import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/feed/feed_view.dart';
import 'package:tamely/util/styles.dart';

import '../explore_blogs_viewmodel.dart';
import 'blog_screen_viewmodel.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({Key? key}) : super(key: key);

  // const FruitDetail({Key? key, required this.fruitDataModel}) : super(key: key);

  @override
  _BlogScreenState createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  @override
  Widget build(BuildContext context) {
    final todo = ModalRoute.of(context)?.settings.arguments as Map;

    return ViewModelBuilder<BlogScreenViewModel>.reactive(
      viewModelBuilder: () => BlogScreenViewModel(),
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
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    '${todo['postimg']}',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Divider(
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    '${todo['title']}',
                    style: heading3Style,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.04,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                '${todo['thumbnail']}',
                              ),
                            ),
                            Text(
                              "Vartika Kakar",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            LikeBtn(
                                initialState: ExploreBlogsViewModel().isLiked,
                                onTap: () {}),
                            Text(
                              '${todo['hearts']}',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // Row(
                //   mainAxisSize: MainAxisSize
                //       .max, // this will take space as minimum as posible(to center)
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: <Widget>[
                //     ConstrainedBox(
                //       constraints: BoxConstraints.tightFor(
                //           width: MediaQuery.of(context).size.width * 0.3,
                //           height: 50),
                //       child: new ElevatedButton(
                //         child: new Icon(
                //           Icons.facebook,
                //           size: 30,
                //           color: Colors.blue,
                //         ),
                //         style: ButtonStyle(
                //             backgroundColor:
                //                 MaterialStateProperty.all(Colors.white),
                //             elevation: MaterialStateProperty.all(2),
                //             shape: MaterialStateProperty.all(
                //                 RoundedRectangleBorder(
                //                     side:
                //                         BorderSide(color: Colors.grey.shade300),
                //                     borderRadius: BorderRadius.only(
                //                         bottomLeft: Radius.circular(10),
                //                         topLeft: Radius.circular(10))))),
                //         onPressed: null,
                //       ),
                //     ),
                //     ConstrainedBox(
                //       constraints: BoxConstraints.tightFor(
                //           width: MediaQuery.of(context).size.width * 0.3,
                //           height: 50),
                //       child: new ElevatedButton(
                //         child: new FaIcon(
                //           FontAwesomeIcons.twitter,
                //           size: 30,
                //           color: Colors.blue,
                //         ),
                //         style: ButtonStyle(
                //             backgroundColor:
                //                 MaterialStateProperty.all(Colors.white),
                //             elevation: MaterialStateProperty.all(2),
                //             shape: MaterialStateProperty.all(
                //                 RoundedRectangleBorder(
                //                     side:
                //                         BorderSide(color: Colors.grey.shade300),
                //                     borderRadius:
                //                         BorderRadius.all(Radius.circular(0))))),
                //         onPressed: null,
                //       ),
                //     ),
                //     ConstrainedBox(
                //       constraints: BoxConstraints.tightFor(
                //           width: MediaQuery.of(context).size.width * 0.3,
                //           height: 50),
                //       child: new ElevatedButton(
                //         child: new FaIcon(
                //           FontAwesomeIcons.whatsapp,
                //           size: 30,
                //           color: Colors.green,
                //         ),
                //         style: ButtonStyle(
                //             backgroundColor:
                //                 MaterialStateProperty.all(Colors.white),
                //             elevation: MaterialStateProperty.all(2),
                //             shape: MaterialStateProperty.all(
                //                 RoundedRectangleBorder(
                //                     side:
                //                         BorderSide(color: Colors.grey.shade300),
                //                     borderRadius: BorderRadius.only(
                //                         bottomRight: Radius.circular(10),
                //                         topRight: Radius.circular(10))))),
                //         onPressed: null,
                //       ),
                //     ),
                //   ],
                // ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    '${todo['content']}',
                    style: body2Style.copyWith(
                      height: 1.5,
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 20),
                //   child: Row(
                //     mainAxisSize: MainAxisSize
                //         .max, // this will take space as minimum as posible(to center)
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: <Widget>[
                //       ConstrainedBox(
                //         constraints: BoxConstraints.tightFor(
                //             width: MediaQuery.of(context).size.width * 0.3,
                //             height: 50),
                //         child: new ElevatedButton(
                //           child: new Icon(
                //             Icons.facebook,
                //             size: 30,
                //             color: Colors.blue,
                //           ),
                //           style: ButtonStyle(
                //               backgroundColor:
                //                   MaterialStateProperty.all(Colors.white),
                //               elevation: MaterialStateProperty.all(2),
                //               shape: MaterialStateProperty.all(
                //                   RoundedRectangleBorder(
                //                       side: BorderSide(
                //                           color: Colors.grey.shade300),
                //                       borderRadius: BorderRadius.only(
                //                           bottomLeft: Radius.circular(10),
                //                           topLeft: Radius.circular(10))))),
                //           onPressed: null,
                //         ),
                //       ),
                //       ConstrainedBox(
                //         constraints: BoxConstraints.tightFor(
                //             width: MediaQuery.of(context).size.width * 0.3,
                //             height: 50),
                //         child: new ElevatedButton(
                //           child: new FaIcon(
                //             FontAwesomeIcons.twitter,
                //             size: 30,
                //             color: Colors.blue,
                //           ),
                //           style: ButtonStyle(
                //               backgroundColor:
                //                   MaterialStateProperty.all(Colors.white),
                //               elevation: MaterialStateProperty.all(2),
                //               shape: MaterialStateProperty.all(
                //                   RoundedRectangleBorder(
                //                       side: BorderSide(
                //                           color: Colors.grey.shade300),
                //                       borderRadius: BorderRadius.all(
                //                           Radius.circular(0))))),
                //           onPressed: null,
                //         ),
                //       ),
                //       ConstrainedBox(
                //         constraints: BoxConstraints.tightFor(
                //             width: MediaQuery.of(context).size.width * 0.3,
                //             height: 50),
                //         child: new ElevatedButton(
                //           child: new FaIcon(
                //             FontAwesomeIcons.whatsapp,
                //             size: 30,
                //             color: Colors.green,
                //           ),
                //           style: ButtonStyle(
                //               backgroundColor:
                //                   MaterialStateProperty.all(Colors.white),
                //               elevation: MaterialStateProperty.all(2),
                //               shape: MaterialStateProperty.all(
                //                   RoundedRectangleBorder(
                //                       side: BorderSide(
                //                           color: Colors.grey.shade300),
                //                       borderRadius: BorderRadius.only(
                //                           bottomRight: Radius.circular(10),
                //                           topRight: Radius.circular(10))))),
                //           onPressed: null,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
