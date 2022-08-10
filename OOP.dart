// 1) Inheritance
// 2) Polymorphism
// 3) Abstraction  (WHAT)
// 4) Encapsulation (HOW)  _ means file private

//-------Overload----------------
//same name different parameters
// void main() {
//   son s1 = son("male", "Hassan", 23);
//   s1.showinfo();
//   daughter d1 = daughter("female", "Hania", 20);
//   d1.showinfo();
// }

// class family {
//   String name = "";
//   int members = 0;
//   family(this.name, this.members);

//   showinfo() {
//     print("Name: " + name);
//     print(members);
//   }
// }

// class son extends family {
//   String gender = "Male";
//   son(this.gender, String name, int no) : super(name, no);
//   @override
//   showinfo() {
//     // TODO: implement showinfo
//     return super.showinfo();
//     print("Gender: " + this.gender);
//   }
// }

// class daughter extends family {
//   String gender = "FeMale";
//   daughter(this.gender, String name, int no) : super(name, no);
// }

//--------Polymorphism--------------------
import 'file.dart' as fi;

void main() {
  son s1 = son("male", "Hassan", 23);
  daughter d1 = daughter("female", "Hania", 20);
  polym(s1);
  polym(d1);
  fi.dada da = fi.dada();
  da.shoba = "Farmer";
}

polym(family f) {
  f.showinfo();
}

class family {
  String name = "";
  int members = 0;
  family(this.name, this.members);

  showinfo() {
    print("Name: " + name);
    print(members);
  }
}

class son extends family {
  String gender = "Male";
  son(this.gender, String name, int no) : super(name, no);
  @override
  showinfo() {
    // TODO: implement showinfo
    return super.showinfo();
    print("Gender: " + this.gender);
  }
}

class daughter extends family {
  String gender = "FeMale";
  daughter(this.gender, String name, int no) : super(name, no);
}
