import 'package:kubelite/app/app.logger.dart';
import 'package:stacked/stacked.dart';

class ProfileViewModel extends BaseViewModel {
  final log = getLogger('StartupViewModel');
  // final _navigationService = locator<NavigationService>();
  // String? _addDetialsRoute = Routes.addDetialsProfileView;
  // dynamic _destinationArguments;

  Future _addDetialsPage() async {
    // if (_addDetialsRoute != null) {
    //   await _navigationService.navigateTo(
    //     _addDetialsRoute!,
    //     arguments: _destinationArguments,
    //   );
    // }
  }

  String _profilename = "Joeylene Rivera";
  String _username = "username";
  String _actionText = "Complete your profile";
  int _completedProfileStepCount = 0;
  int _completedProfileTotalCount = 2;
  int _noOfAnimals = 0;
  int _noOfPosts = 0;
  int _noOfFollowers = 0;
  int _noOfFollowing = 0;
  int _noOfHearts = 0;

  bool isMyAnimalsVisibile = false;

  List<String> _dummyListOfMyAnimals = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZfzuK3MzuuBesw00QZdr4i0qDG79vpm8ktA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJCNf4o2GO1wvZ-M-KBWbOvsZbALu4e192KQ&usqp=CAU",
    "https://navs.org/wp-content/uploads/bb-plugin/cache/bunny-landscape.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF3620nhlKrn_G8PNWR9PzVYy_UesDVdNtzg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEMOlKL-8FxujCmWSywkyHnhd-VZgYtiB8nU1Jqc0FicxeoRwtOJhcZXneks69WgHMWlY&usqp=CAU",
  ];

  List<String> _dummyListOfPosts = [
    "https://image.shutterstock.com/image-photo/sexy-smiling-male-model-260nw-439389151.jpg",
    "https://media.istockphoto.com/photos/happy-smiling-man-looking-away-picture-id1158245623?k=20&m=1158245623&s=612x612&w=0&h=rGmn02kNdoQySPEoQmbbDBxOayL4sdW3QWqP9rjgxCg=",
    "https://cdn.crello.com/api/media/small/165241112/stock-photo-handsome-smiling-man",
    "https://image.shutterstock.com/image-photo/sexy-smiling-male-model-260nw-439389151.jpg",
    "https://cdn.crello.com/api/media/small/165241112/stock-photo-handsome-smiling-man",
    "https://image.shutterstock.com/image-photo/sexy-smiling-male-model-260nw-439389151.jpg",
    "https://image.shutterstock.com/image-photo/sexy-smiling-male-model-260nw-439389151.jpg",
    "https://media.istockphoto.com/photos/happy-smiling-man-looking-away-picture-id1158245623?k=20&m=1158245623&s=612x612&w=0&h=rGmn02kNdoQySPEoQmbbDBxOayL4sdW3QWqP9rjgxCg=",
    "https://image.shutterstock.com/image-photo/sexy-smiling-male-model-260nw-439389151.jpg",
    "https://cdn.crello.com/api/media/small/165241112/stock-photo-handsome-smiling-man",
    "https://image.shutterstock.com/image-photo/sexy-smiling-male-model-260nw-439389151.jpg",
  ];

  List<String> get dummyListOfPosts => _dummyListOfPosts;

  List<String> get dummyListOfMyAnimals => _dummyListOfMyAnimals;

  String get profilename => _profilename;

  String get username => _username;

  String get actionText => _actionText;

  int get noOfAnimals => _noOfAnimals;
  int get noOfPosts => _noOfPosts;
  int get noOfFollowers => _noOfFollowers;
  int get noOfFollowing => _noOfFollowing;
  int get noOfHearts => _noOfHearts;

  int get completedProfileStepCount => _completedProfileStepCount;

  int get completedProfileTotalCount => _completedProfileTotalCount;

  void myAnimalVisible() {
    isMyAnimalsVisibile = !isMyAnimalsVisibile;
    notifyListeners();
  }

  void goToaddDetialsProfileAction() async {
    await _addDetialsPage();
  }

  void followProfileAction() {}
}
