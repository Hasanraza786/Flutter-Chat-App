class UserModel {
  String id;
  String email;
  String username;

  UserModel({this.email, this.id, this.username});

  Map<String, dynamic> toJson() {
    return {'id': 'id', 'email': 'email', 'username': 'username'};
  }
}
