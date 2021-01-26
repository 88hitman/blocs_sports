class FanArt {

  List<String> images = [];

  FanArt.fromJson(Map json, String base) {
    for(int x = 1; x < 5; x++) {
      final n = json[base + "$x"];
      if (n != null) {
        images.add(n);
      }
    }
  }
}