import 'package:askanything/domain/user/user.dart';
import 'package:askanything/domain/user/user_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.freezed.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState.initial() = Initial;
  const factory UserState.loading() = Loading;
  const factory UserState.loaded(User user) = Loaded;
  const factory UserState.loadedAll(List<User> users) = LoadedAll;
  const factory UserState.loadedFollowers(List<User> followers) =
      LoadedFollowers;
  const factory UserState.loadedFollowings(List<User> followings) =
      LoadedFollowings;
  const factory UserState.error(UserFailure failure) = Error;
  const factory UserState.deleted() = Deleted;
  const factory UserState.followed() = Followed;
  const factory UserState.unfollowed() = Unfollowed;
}
