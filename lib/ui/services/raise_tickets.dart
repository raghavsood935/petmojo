import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/services/raise_a_ticket_viewmodel.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/widgets/app_text.dart';

import '../../util/ui_helpers.dart';
import '../../widgets/app_input_field.dart';
import '../../widgets/main_btn.dart';
import '../feedback/feedback_view.dart';

class RaiseTickets extends StatelessWidget {
  const RaiseTickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RaiseTicketsViewModel>.reactive(
        viewModelBuilder: () => RaiseTicketsViewModel(),
        // onModelReady: (model) async => await model.init(),
        builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            title: AppText.body2("Raise a Ticket / Issue"),
            centerTitle: true,
            elevation: 0,
            backgroundColor: colors.white,
            automaticallyImplyLeading: true,
            leading: GestureDetector(onTap:()=>Navigator.pop(context),child: Icon(Icons.arrow_back_ios,color: colors.black,)),
          ),
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(
                      color: colors.kcGreyBackground,
                      height: 3.0,
                      thickness: 3.0,
                    ),
                    verticalSpaceLarge,
                    AppText.body2(
                      "Ticket Title",
                    ),
                    verticalSpaceSmall,
                    AppInputField(
                      fillColor: Colors.white,
                      hint: "Enter ticket title",
                      controller: model.titleController,
                      // onChanged: model.secondPageValidation,
                      isBoxBorder: true,
                      textInputType: TextInputType.name,
                      textCapitalization: TextCapitalization.none,
                    ),
                    verticalSpaceSmall,
                    AppText.body2(
                      "Category",
                    ),
                    verticalSpaceSmall,
                    AppInputField(
                      fillColor: Colors.white,
                      hint: "Service request, Problem, Change etc",
                      controller: model.categoryController,
                      // onChanged: model.secondPageValidation,
                      isBoxBorder: true,
                      textInputType: TextInputType.name,
                      textCapitalization: TextCapitalization.none,
                    ),
                    verticalSpaceSmall,
                    AppText.body2(
                      "Description of Issue",
                    ),
                    verticalSpaceSmall,
                    TextField(
                      controller: model.descriptionController,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          focusColor: Colors.white ,
                          hintText:"Describe your problem",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 1.0),
                          ),
                        ),
                        keyboardType: TextInputType.multiline,
                        maxLines: 4,
                    ),
                  verticalSpaceMedium,
                    AppText.body2(
                      "Phone number",
                    ),
                    verticalSpaceSmall,
                    AppInputField(
                      fillColor: Colors.white,
                      hint: "(+91) 123 456 7891",
                      controller: model.phoneNumberController,
                      // onChanged: model.secondPageValidation,
                      isBoxBorder: true,
                      textInputType: TextInputType.phone,
                      textCapitalization: TextCapitalization.none,
                    ),
                    verticalSpaceLarge,
                    verticalSpaceMedium,
                    MainButtonWidget(
                      onMainButtonTapped: model.onSubmit,
                      mainButtonTitle: "SUBMIT",
                    ),
                  ],
                ),
              ),
            ),
          ),

        ));
  }
}
