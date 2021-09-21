import 'package:ddd/domain/auth/user.dart';
import 'package:ddd/domain/auth/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb_auth;

extension FirebaseUserX on fb_auth.User {
  User toDomain() => User(id: UniqueId.fromUniqueString(uid));
}
