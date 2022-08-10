//----------- Enum ------------------
// set of values

void main(List<String> args) {
  pickimage().pick(sourcetype.insta);
}

enum sourcetype { camera, gallery, insta }

class pickimage {
  void pick(sourcetype picks) {
    if (picks == sourcetype.camera) {
      print("Image picked from camera");
    } else if (picks == sourcetype.gallery) {
      print("Image picked from cgallery");
    } else if (picks == sourcetype.insta) {
      print("Image picked from insta");
    } else {
      print("not allowed");
    }
  }
}
