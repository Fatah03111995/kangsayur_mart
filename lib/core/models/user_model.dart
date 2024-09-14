class UserModel {
  final String userId;
  final String name;
  final String email;
  final String password;
  final List<String> wishlist;

  UserModel(
      {required this.userId,
      required this.name,
      required this.email,
      required this.password,
      required this.wishlist});
}
