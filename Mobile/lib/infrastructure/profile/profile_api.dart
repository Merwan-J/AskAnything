import "dart:convert";
import "package:askanything/infrastructure/profile/profile_dto.dart";
import "package:askanything/infrastructure/profile/profile_form_dto.dart";
import "package:askanything/util/custom_http_client.dart";

import "../../domain/profile/edit_profile_form.dart";

class ProfileApi {
  final CustomHttpClient _httpClient;

  ProfileApi(this._httpClient);

  Future<ProfileDto> updateProfile(
      {required EditProfileForm profileForm}) async {
    print("api reached");
    print(profileForm.toJson());
    var id = "644a7a97dd0ade9f826deeda";
    // var reqbody = {"name": "hg", "email": "h101@gmail.com"};
    var response = await _httpClient.patch(
      "users/$id",
      body: jsonEncode(profileForm.toJson()),
    );
    // print("jhbkh");

    print("api success");

    if (response.statusCode.toString() == 200.toString()) {
      print("here");
      print(await jsonDecode(response.body));
      var responseBody = await jsonDecode(response.body)["data"]["newUser"];
      var questions =
          (responseBody["questions"] as List<dynamic>).cast<String>();
      var prdto = ProfileDto(
          name: responseBody["name"],
          profilePicture: "image",
          reputation: 2,
          following: [],
          followers: [],
          questions: questions,
          answers: []);
      return prdto;
      // Map<String, dynamic> decoded =
      //     await json.decode(response.body)['data']["newUser"];
      // ProfileDto profileDto = getProfile(decoded);
      // print(response.body);
      // return ProfileDto.fromJson(json.decode(response.body));
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
