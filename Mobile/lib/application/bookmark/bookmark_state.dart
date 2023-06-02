import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/user/user.dart';
part 'bookmark_state.freezed.dart';

@freezed
class BookmarkState with _$BookmarkState {
  const factory BookmarkState.initial() = Initial;
  const factory BookmarkState.bookmarkAddSuccess(User user) =
      BookmarkAddSuccess;
  const factory BookmarkState.loading() = Loading;
  const factory BookmarkState.bookmarkRemoveSuccess(User user) =
      BookmarkRemoveSuccess;
  const factory BookmarkState.failure(String errorMessage) = Failure;
}
