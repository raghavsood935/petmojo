import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kubelite/app/app.logger.dart';
import 'package:kubelite/exception/firestore_api_exception.dart';
import 'package:kubelite/models/application_models.dart';
import 'package:kubelite/util/app_keys.dart';

class FirestoreApi {
  final log = getLogger('FirestoreApi');

  final CollectionReference usersCollection =
      FirebaseFirestore.instance.collection(UsersFirestoreKey);

  Future<void> createUser({required LocalUser user}) async {
    log.i('user:$user');

    try {
      final userDocument = usersCollection.doc(user.id);
      await userDocument.set(user.toJson());
      log.v('UserCreated at ${userDocument.path}');
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to create new user',
        devDetails: '$error',
      );
    }
  }

  Future<LocalUser?> getUser({required String userId}) async {
    log.i('userId:$userId');

    if (userId.isNotEmpty) {
      final userDoc = await usersCollection.doc(userId).get();
      if (!userDoc.exists) {
        log.v('We have no user with id $userId in our database');
        return null;
      }
      if (userDoc.exists) {
        Map<String, dynamic> userData = userDoc.data() as Map<String, dynamic>;
        log.v('User found. Data: $userData');
        return LocalUser.fromJson(userData);
      } else {
        throw FirestoreApiException(message: 'Your user is not exist.');
      }
    } else {
      throw FirestoreApiException(
          message:
              'Your userId passed in is empty. Please pass in a valid user if from your Firebase user.');
    }
  }
}
