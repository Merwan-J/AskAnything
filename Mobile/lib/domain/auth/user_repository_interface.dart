import '../user/user.dart';

abstract class IUserRepository{
  Future<User?> getAuthenticatedUser();
  User? getAuthenticatedUserSync();
  Future<String?> getAuthToken();
}