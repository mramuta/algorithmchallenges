public class Solution {
  public int hammingDistance(int x, int y) {
    String xstr =  Integer.toBinaryString(x);
    String ystr =  Integer.toBinaryString(y);
    int diff = 0;
    if(xstr.length() > ystr.length()){
      int j = xstr.length() - ystr.length();
      while (j > 0){
        ystr = "0" + ystr;
        j--;
      }
    }else{
      int j = ystr.length() - xstr.length();
      while (j > 0){
        xstr = "0" + xstr;
        j--;
      }
    }
    int i = 0;
    while (i < xstr.length()){
      if (xstr.charAt(i) != ystr.charAt(i)){
        diff++;
      }
      i++;
    }
    return diff;
  }
}