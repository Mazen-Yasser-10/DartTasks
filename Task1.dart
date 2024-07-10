import 'dart:io';
void main()
  {
    String?  s1 = stdin.readLineSync();
    String?  s2 = stdin.readLineSync();
    print("${s1!.length} ${s2!.length}");
    print(s1 + " " + s2);
  }
