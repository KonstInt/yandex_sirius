import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:firebase_core/firebase_core.dart';
import 'package:yandex_sirius/app/features/user/data/remote/firebase/models/user/firebase_api_user_model.dart';

import '../../../../../../../firebase_options.dart';
import '../../../../domain/exceptions/eceptions.dart';

class FirebaseUserService {
  FirebaseUserService() {
    _initializeFirebase();
  }

  Future<void> _initializeFirebase() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  }

  Future<FirebaseApiUserModel> getUser(String userId) async {
    var snapshot =
        await FirebaseFirestore.instance.collection('users').doc(userId).get();
    var user = FirebaseApiUserModel.fromJson(snapshot.data()!);
    return user;
  }

  Future<List<FirebaseApiUserModel>> getFriends(String userId) async {
    var querySnapshot = await FirebaseFirestore.instance
        .collection('friends')
        .where('userId', isEqualTo: userId)
        .get();
    List<String> friendIds = [];
    for (var element in querySnapshot.docs) {
      var id = element['friendId'];
      friendIds.add(id);
    }
    List<FirebaseApiUserModel> friends = [];
    for (String id in friendIds) {
      var snapshot =
          await FirebaseFirestore.instance.collection('users').doc(id).get();
      friends.add(FirebaseApiUserModel.fromJson(snapshot.data()!));
    }
    return friends;
  }

  Future<FirebaseApiUserModel?> signUp(
      FirebaseApiUserModel apiUserModel, String login, String password) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: login,
        password: password,
      );
      String? token = await credential.user?.getIdToken() ?? '';
      var newUser = apiUserModel.copyWith(id: token ?? '');
      await FirebaseFirestore.instance
          .collection('users')
          .doc(token)
          .set(newUser.toJson());
      return newUser;
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw SignUpWithEmailAndPasswordFailure.fromCode(e.code);
    } catch (_) {
      throw const SignUpWithEmailAndPasswordFailure();
    }
  }

  Future<FirebaseApiUserModel> signIn(String login, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: login, password: password);
      String? token = await credential.user!.getIdToken();
      var snapshot =
          await FirebaseFirestore.instance.collection('users').doc(token).get();
      var user = FirebaseApiUserModel.fromJson(snapshot.data()!);
      return user;
    } on FirebaseAuthException catch (e) {
      throw LogInWithEmailAndPasswordFailure.fromCode(e.code);
    } catch (_) {
      throw const LogInWithEmailAndPasswordFailure();
    }
  }

  Future<FirebaseApiUserModel> updateUser(FirebaseApiUserModel user) async {
    String token = user.id;
    await FirebaseFirestore.instance
        .collection('users')
        .doc(token)
        .update(user.toJson());
    return user;
  }

  Future<FirebaseApiUserModel> updateAvatar(
      String userId, String photoAvatar) async {
    FirebaseFirestore.instance.collection('users').doc(userId).update({
      'photoUrl': photoAvatar,
    });
    return getUser(userId);
  }
}
