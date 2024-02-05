import 'package:flutter/material.dart';
import 'package:restapi_with_provider/app/models/character_model.dart';
import 'package:restapi_with_provider/app/services/remote_service.dart';

class CharacterController extends ChangeNotifier {
  bool isLoading = false;
  List<Character> character = [];
  CharacterController() {
    fetchCharacters();
  }

  Future<void> fetchCharacters() async {
    isLoading = true;
    notifyListeners();

    character = await RemoteServices.fetchCharacters();
    isLoading = false;
    notifyListeners();
  }
}
