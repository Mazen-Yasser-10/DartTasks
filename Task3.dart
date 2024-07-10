import 'dart:io';
import 'dart:math';

void main(){
  int t = int.parse(stdin.readLineSync()!);
  for(int i = 0 ; i < t ; i++)
    {
      int N = int.parse(stdin.readLineSync()!);
      List<int> array = [];
      List<String> input = stdin.readLineSync()!.split(" ");
      for(int j = 0 ; j < N ; j++)
        {
          array.add(int.parse(input[j]));
        }
      int minimum = array[0] + array[1] + 1;
      for(int k = 0 ; k < N ; k++)
        {
          for(int l = k+1 ; l < N ; l++)
          {
            int sum = array[k] + array[l] + l - k;
            minimum = min(minimum,sum);
          }
        }
      print(minimum);
    }
}
