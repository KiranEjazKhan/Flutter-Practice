void main() {
  friends f1 = friends("Hira", age: 21, email: "hira@gmail.com");
  friends f2 = friends("Rifat", age: 23, email: "rifat12gmail.com");
  f1.showinfo();
  f2.showinfo();
  print("\n\n");
  dost d1 = dost("Sanam", 21);
  print("Name: " + d1.nam + "\nAge: ");
  print(d1.age);
  print("Country: " + dost.country);
  print("\n\n");
  chap c1 = chap("Sameena", -1);

  c1.setage(2);
  c1.Age = 24;
  print(c1.nam);
  print(c1.age);
  print(c1.ages);
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
  //Manual Constructor
}

//---------------- Static ---------------
//same for all objects and can't be changed
class dost {
  String nam = "";
  int age = 0;
  static String country = "Pakistan";
  dost(this.nam, this.age);
}

//------------ Set and Get --------------------

class chap {
  String nam = "";
  int age = 0;
  static String country = "Pakistan";
  chap(this.nam, this.age);

  set Age(int umer) {
    if (umer < 0) {
      return;
    }
    this.age = umer;
  }

  int get ages {
    if (age < 10) {
      return 0;
    }
    return age;
  }

  setage(int umer) {
    if (umer < 0) {
      return;
    }
    this.age = umer;
  }

  static Setchap() {
    country = "china";
    print(country);
  }
}
