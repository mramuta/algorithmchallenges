public class Solution {
  public String reverseString(String s) {
    String revString = "";
    char[] wordArr = s.toCharArray();
    int length = wordArr.length/2;
    for(int i = 0; i < length; i++){
      char temp = wordArr[i];
      wordArr[i] = wordArr[wordArr.length - i - 1];
      wordArr[wordArr.length - i - 1] = temp;
    }
    return new String(wordArr);
  }
}