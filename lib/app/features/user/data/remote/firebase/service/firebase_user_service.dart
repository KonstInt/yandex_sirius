import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:yandex_sirius/app/features/user/data/remote/firebase/models/user/firebase_api_user_model.dart';

import '../../../../domain/exceptions/eceptions.dart';

class FirebaseUserService {
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

  Future<String?> authentication(String login, String password) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: login,
        password: password,
      );
      String? token = credential.user!.uid;
      return token;
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw SignUpWithEmailAndPasswordFailure.fromCode(e.code);
    } catch (_) {
      throw const SignUpWithEmailAndPasswordFailure();
    }
  }

  Future<FirebaseApiUserModel?> signUp(
      FirebaseApiUserModel apiUserModel, String login, String password) async {
    bool nicknameExists = await checkIfNicknameExists(apiUserModel.nickname);
    if (nicknameExists) {
      throw const NicknameAlreadyExistsException();
    }
    var newUser = apiUserModel.copyWith(id: apiUserModel.id);
    await FirebaseFirestore.instance
        .collection('users')
        .doc(apiUserModel.id)
        .set(newUser.toJson());
    await FirebaseFirestore.instance
        .collection('nicknames')
        .doc(apiUserModel.nickname)
        .set({});
    return newUser;
  }

  Future<FirebaseApiUserModel> signIn(String login, String password) async {
    try {
      print('1');
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: login,
        password: password,
      );
      String? token = credential.user!.uid;
      var snapshot =
          await FirebaseFirestore.instance.collection('users').doc(token).get();
      var user = FirebaseApiUserModel.fromJson(snapshot.data()!);
      return user;
    } on firebase_auth.FirebaseAuthException catch (e) {
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

Future<bool> checkIfNicknameExists(String nickname) async {
  CollectionReference nicknamesRef =
      FirebaseFirestore.instance.collection('nicknames');
  QuerySnapshot querySnapshot =
      await nicknamesRef.where('nickname', isEqualTo: nickname).get();
  return querySnapshot.docs.isNotEmpty;
}
