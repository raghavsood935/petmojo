import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/groups/create_group/create_group_second_page/create_group_second_page_view_model.dart';
import 'package:tamely/widgets/app_input_field.dart';
import 'package:tamely/widgets/with_title_item.dart';

class CreateGroupSecondView extends StatefulWidget {
  const CreateGroupSecondView({Key? key}) : super(key: key);

  @override
  _CreateGroupSecondViewState createState() => _CreateGroupSecondViewState();
}

class _CreateGroupSecondViewState extends State<CreateGroupSecondView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateGroupSecondViewModel>.reactive(
      viewModelBuilder: () => CreateGroupSecondViewModel(),
      builder: (context, model, child) => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 15.0,
            right: 15,
            left: 15,
            bottom: 100,
          ),
          child: Column(children: [
            WithTitleItem(
              title: 'Add description',
              isManitory: false,
              child: AppInputField(
                controller: model.descriptioinTC,
                hint: "Type name of your group",
              ),
            ),
            WithTitleItem(
              title: 'Add hashtags',
              isManitory: false,
              child: AppInputField(
                controller: model.hashtagTC,
                hint: "Add atleast 3 hashtags here",
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
