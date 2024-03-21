import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:yandex_sirius/app/features/user/data/remote/firebase/models/friend/firebase_api_friend_model.dart';
import 'package:yandex_sirius/app/features/user/data/remote/firebase/models/user/firebase_api_user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../../../../firebase_options.dart';

class FirebaseUserService {
  FirebaseUserService() {
    _initializeFirebase();
  }

  Future<void> _initializeFirebase() async {
    WidgetsFlutterBinding.ensureInitialized();
    //TODO
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
      String? token = await credential.user!.getIdToken();
      var newUser = FirebaseApiUserModel(
        id: token!,
        name: apiUserModel.name,
        secondName: apiUserModel.secondName,
        nickname: apiUserModel.nickname,
        photoUrl: apiUserModel.photoUrl,
        friendList: apiUserModel.friendList,
        isOnline: apiUserModel.isOnline,
        isGeoTrackingOn: apiUserModel.isGeoTrackingOn,
      );
      await FirebaseFirestore.instance
          .collection('users')
          .doc(token)
          .set(newUser.toJson());
      return newUser;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
      return null;
    } catch (e) {
      print(e);
      return null;
    }
  }

//TODO
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
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
    throw UnimplementedError();
  }

  Future<FirebaseApiUserModel> updateUser(FirebaseApiUserModel user) async {
    String token = user.id;
    await FirebaseFirestore.instance
        .collection('users')
        .doc(token)
        .update(user.toJson());
    throw UnimplementedError();
  }

  Future<FirebaseApiUserModel> updateAvatar(
      String userId, String photoAvatar) async {
    FirebaseFirestore.instance.collection('users').doc(userId).update({
      'photoUrl': photoAvatar,
    });
    throw UnimplementedError();
  }
}
