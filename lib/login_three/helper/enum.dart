enum ImagePaths {
  // ignore: constant_identifier_names
  login_bro,
  background,
  // ignore: constant_identifier_names
  sign_up_bg,
}

extension ImagePathsExtension on ImagePaths {
  String path(){
    return 'assets/$name.png';
  }
}