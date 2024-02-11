import 'package:flutter_test/flutter_test.dart';
import 'package:reusablecomponent/modules/reverse_string/presentation/pages/reverse_string_page.dart';

void main(){

  test('Strings should be reversed',(){
    String initialWord = "Hello";
    String reversedWord = reverseString(initialWord);
    expect(reversedWord, 'olleH');
  });
}