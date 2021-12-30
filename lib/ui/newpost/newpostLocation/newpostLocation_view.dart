import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/styles.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'newpostLocation_viewmodel.dart';

class NewPostLocation extends StatefulWidget {
  const NewPostLocation({Key? key}) : super(key: key);
  @override
  _NewPostLocationState createState() => _NewPostLocationState();
}

class _NewPostLocationState extends State<NewPostLocation> {
  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NewPostLocationViewModel>.reactive(
      viewModelBuilder: () => NewPostLocationViewModel(),
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
            "Location",
            style: heading3Style.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.black,
                      ),
                      Expanded(
                        child: TextField(
                          controller: controller,
                          decoration: new InputDecoration(
                            focusedBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 0.0),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 0.0),
                            ),
                            hintText: 'Search location',
                          ),
                          onChanged: onItemChanged,
                        ),
                      ),
                    ],
                  ),
                ),
                spacedDividerTiny,
                new Expanded(
                  child: ListView(
                    children: newLocationList.map((data) {
                      return Card(
                        elevation: 0,
                        child: ListTile(
                          leading: Icon(
                            Icons.location_on_outlined,
                            color: Colors.grey,
                          ),
                          title: Text(data),
                          onTap: () {
                            Navigator.pop(context, data);
                          },
                        ),
                        margin: const EdgeInsets.all(0),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<String> newLocationList = List.from(NewPostLocationViewModel.location);

  onItemChanged(String value) {
    setState(() {
      newLocationList = NewPostLocationViewModel.location
          .where((string) => string.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }
}
