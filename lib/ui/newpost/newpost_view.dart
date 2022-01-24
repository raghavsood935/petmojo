import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:tamely/util/styles.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'newpost_viewmodel.dart';

class NewPost extends StatefulWidget {
  NewPost({Key? key, required this.path}) : super(key: key);

  String path;

  @override
  _NewPostState createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  TextEditingController tc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String Selectedlocation = "";
    // ModalRoute.of(context)?.settings.arguments as String;
    return ViewModelBuilder<NewPostViewModel>.reactive(
      viewModelBuilder: () => NewPostViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: kToolbarHeight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          padding: const EdgeInsets.all(0),
                          icon: Icon(
                            Icons.arrow_back_rounded,
                            color: colors.black,
                          ),
                          onPressed: () => Navigator.pop(context)),
                      AppText.titleBold("New Post"),
                      GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            height: 30,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: colors.primary),
                              color: colors.primary,
                            ),
                            child: Text(
                              "Post",
                              style: bodyStyle.copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                        onTap: () => model.post(widget.path, tc.text),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                width: MediaQuery.of(context).size.width * 0.25,
                                child: Image.file(File(widget.path),
                                    fit: BoxFit.fill),
                              ),
                              ConstrainedBox(
                                constraints: BoxConstraints.tightFor(
                                  width:
                                      MediaQuery.of(context).size.width * 0.65,
                                ),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.23,
                                  padding: EdgeInsets.all(10.0),
                                  child: new ConstrainedBox(
                                    constraints: BoxConstraints(),
                                    child: new TextField(
                                      maxLines: 50,
                                      controller: tc,
                                      decoration: new InputDecoration(
                                        focusedBorder: const OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.white, width: 0.0),
                                        ),
                                        enabledBorder: const OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.white, width: 0.0),
                                        ),
                                        hintText:
                                            'Write captions, mention people & add hashtags',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      spacedDividerTiny,
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(
                      //     horizontal: 15,
                      //     vertical: 5,
                      //   ),
                      //   child: GestureDetector(
                      //     onTap: () async {
                      //       final location = await Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (context) => const NewPostLocation()),
                      //       );
                      //       Selectedlocation = location;
                      //
                      //       print(Selectedlocation);
                      //     },
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //       children: [
                      //         Selectedlocation == ""
                      //             ? Text(
                      //                 "Add Location",
                      //                 style: bodyStyle.copyWith(fontSize: 18),
                      //               )
                      //             : Text(
                      //                 Selectedlocation,
                      //                 style: bodyStyle.copyWith(fontSize: 18),
                      //               ),
                      //         Icon(
                      //           Icons.keyboard_arrow_right,
                      //           color: Colors.grey,
                      //           size: 30,
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      // spacedDividerTiny,
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: AppText.body1Bold('Post on Profiles'),
                        ),
                      ),
                      model.isLoading
                          ? CircularProgressIndicator(color: colors.primary)
                          : ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              itemCount: model.postOn.length,
                              itemBuilder: (BuildContext context, int index) {
                                bool isChecked = false;
                                return Card(
                                  elevation: 0,
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                          ),
                                          child: CheckboxListTile(
                                            activeColor: colors.primary,
                                            dense: true,
                                            title: new Text(
                                              model.postOn[index].name,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 0.5),
                                            ),
                                            value:
                                                model.postOn[index].isChecked,
                                            secondary: Container(
                                              height: 50,
                                              width: 50,
                                              child: CircleAvatar(
                                                backgroundImage: NetworkImage(
                                                    model.postOn[index]
                                                        .profileimg),
                                              ),
                                            ),
                                            onChanged: (bool? val) {
                                              model.postOn[index]
                                                  .onSelectedChange();
                                              setState(() {
                                                isChecked = !isChecked;
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: AppText.body1Bold('Post on Groups'),
                        ),
                      ),
                      model.isGroupLoading
                          ? CircularProgressIndicator(color: colors.primary)
                          : ListView.builder(
                              scrollDirection: Axis.vertical,
                              physics: ScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: model.postOnGroup.length,
                              itemBuilder: (BuildContext context, int index) {
                                bool isChecked = false;
                                return Card(
                                  elevation: 0,
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                          ),
                                          child: CheckboxListTile(
                                            activeColor: colors.primary,
                                            dense: true,
                                            title: new Text(
                                              model.postOnGroup[index].name,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 0.5),
                                            ),
                                            value: model
                                                .postOnGroup[index].isChecked,
                                            secondary: Container(
                                              height: 50,
                                              width: 50,
                                              child: CircleAvatar(
                                                backgroundImage: NetworkImage(
                                                    model.postOnGroup[index]
                                                        .profileimg),
                                              ),
                                            ),
                                            onChanged: (bool? val) {
                                              model.postOnGroup[index]
                                                  .onSelectedChange();
                                              setState(() {
                                                isChecked = !isChecked;
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PostBtn extends StatefulWidget {
  @override
  _PostBtnState createState() => _PostBtnState();
}

class _PostBtnState extends State<PostBtn> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 30,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: colors.primary),
              color: colors.primary,
            ),
            child: Text(
              "Post",
              style: bodyStyle.copyWith(color: Colors.white),
            ),
          ),
        ),
        onTap: () {
          setState(() {});
        });
  }
}
