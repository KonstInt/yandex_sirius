import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:yandex_sirius/app/features/user/data/remote/firebase/models/user/firebase_api_user_model.dart';
import 'package:yandex_sirius/app/features/user/domain/exceptions/eceptions.dart';

class FirebaseUserService {
  Future<FirebaseApiUserModel> getUser(String userId) async {
    final snapshot =
        await FirebaseFirestore.instance.collection('users').doc(userId).get();
    final user = FirebaseApiUserModel.fromJson(snapshot.data()!);
    return user;
  }

  Future<List<FirebaseApiUserModel>> getFriends(String userId) async {
    final querySnapshot = await FirebaseFirestore.instance
        .collection('friends')
        .where('userId', isEqualTo: userId)
        .get();
    final List<String> friendIds = [];
    for (final element in querySnapshot.docs) {
      final id = element['friendId'];
      friendIds.add(id);
    }
    final List<FirebaseApiUserModel> friends = [];
    for (final String id in friendIds) {
      final snapshot =
          await FirebaseFirestore.instance.collection('users').doc(id).get();
      friends.add(FirebaseApiUserModel.fromJson(snapshot.data()!));
    }
    return friends;
  }

  Future<bool> hasUser(String email) async {
    try {
     final q = await FirebaseFirestore.instance.collection('users').where("e-mail", isEqualTo: email).get();
     return q.docs.isNotEmpty;
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw SignUpWithEmailAndPasswordFailure.fromCode(e.code);
    } on Exception {
      throw const SignUpWithEmailAndPasswordFailure();
    }
  }

  Future<FirebaseApiUserModel?> signUp(
      FirebaseApiUserModel apiUserModel, String login, String password) async {
    final bool nicknameExists =
        await _checkIfNicknameExists(apiUserModel.nickname);
    if (nicknameExists) {
      throw const NicknameAlreadyExistsException();
    }
    final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: login,
        password: password,
      );
      final String? token = credential.user!.uid;
    final newUser = apiUserModel.copyWith(id: apiUserModel.id);
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
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: login,
        password: password,
      );
      final String? token = credential.user!.uid;
      final snapshot =
          await FirebaseFirestore.instance.collection('users').doc(token).get();
      final user = FirebaseApiUserModel.fromJson(snapshot.data()!);
      return user;
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw LogInWithEmailAndPasswordFailure.fromCode(e.code);
    } on Exception {
      throw const LogInWithEmailAndPasswordFailure();
    }
  }

  Future<FirebaseApiUserModel> updateUser(FirebaseApiUserModel user) async {
    final String token = user.id;
    await FirebaseFirestore.instance
        .collection('users')
        .doc(token)
        .update(user.toJson());
    return user;
  }

  Future<FirebaseApiUserModel> updateAvatar(
      String userId, String photoAvatar) async {
    await FirebaseFirestore.instance.collection('users').doc(userId).update({
      'photoUrl': photoAvatar,
    });
    return getUser(userId);
  }
}

Future<bool> _checkIfNicknameExists(String nickname) async {
  final CollectionReference nicknamesRef =
      FirebaseFirestore.instance.collection('nicknames');
  final QuerySnapshot querySnapshot =
      await nicknamesRef.where('nickname', isEqualTo: nickname).get();
  return querySnapshot.docs.isNotEmpty;
}
