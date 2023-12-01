class User {
  String name;
  int age;
  String email;
  String mobile;
  String username;

  User({
    required this.name,
    required this.age,
    required this.email,
    required this.mobile,
    required this.username,
  });

  factory User.jackSparrow() {
    return User(
      name: 'Jack Sparrow',
      age: 40,
      mobile: "8860880000",
      email: 'jack.sparrow@pirate.com',
      username: 'captain_jack',
    );
  }
}
