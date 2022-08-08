void main() {
  print("Hello");
  List<String> friends = ["Ali", "Ana", "Ammar"];
  List<List<String>> Best_Friends = [
    friends,
    ["Adil", "Akash", "Anum"]
  ];
  print(friends);
  print(Best_Friends[1][2]);
  Map<String, int> Marks = {"Hira": 23, "Sana": 34};
  print(Marks["Sana"]);

  List<Map<String, int>> Marks_Sec = [
    {"Hira": 23, "Sana": 34},
    {"Hooria": 30, "Sanam": 36}
  ];
  print(Marks_Sec[1]["Sanam"]);
}
