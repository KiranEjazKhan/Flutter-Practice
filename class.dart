void main() {
  friends f1 = friends("Hira", age: 21, email: "hira@gmail.com");
  friends f2 = friends("Rifat", age: 23, email: "rifat12gmail.com");
  f1.showinfo();
  f2.showinfo();
}

class friends {
  String name = "";
  int age = 0;
  String email = "";
  friends(this.name, {this.age = 0, this.email = ""}) {
    if (!this.email.contains("@")) {
      print("Invalid email address: " + this.email + "\n");
      this.email = "";
    }
  }

  void showinfo() {
    print("Friend name: $name ");
    print("Friend age: $age ");
    print("Email Address: $email ");
  }

  //--------------FACTORY CONSTRUCTOR----------------------
  //objects are formed and we can create many functions
}
