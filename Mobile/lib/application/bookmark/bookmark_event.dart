import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookmark_event.freezed.dart';

@freezed
class BookmarkEvent with _$BookmarkEvent {
  const factory BookmarkEvent.addBookmark(String userId, String questionId) =
      AddBookmarkEvent;

  const factory BookmarkEvent.removeBookmark(String userId, String questionId) =
      RemoveBookmarkEvent;
}
