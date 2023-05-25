import "dart:convert";
import "package:askanything/infrastructure/profile/profile_dto.dart";
import "package:askanything/infrastructure/profile/profile_form_dto.dart";
import "package:askanything/util/custom_http_client.dart";

import "../../domain/profile/edit_profile_form.dart";

class ProfileApi {
  final CustomHttpClient _httpClient;

  ProfileApi(this._httpClient);

  Future<ProfileDto> updateProfile(
      {required ProfileFormDto profileForm}) async {
    var response = await _httpClient.multiPartRequest(
      "profile",
      "PATCH",
      body: profileForm.toJson(),
    );

    if (response.statusCode == 200) {
      var responseBody = await response.stream.bytesToString();
      return ProfileDto.fromJson(json.decode(responseBody));
    } else {
      throw Exception('unnknown error');
    }
  }

  Future<ProfileDto> getProfile() async {
    var response = await _httpClient.get("profile");

    if (response.statusCode == 200) {
      return ProfileDto.fromJson(json.decode(response.body));
    } else {
      throw Exception(
        "Unknown error",
      );
    }
  }

  Future<void> deleteAccount(String id) async {
    var response = await _httpClient.delete("profile");

    if (response.statusCode != 204) {
      throw Exception("Unknown error");
    }
  }
}
