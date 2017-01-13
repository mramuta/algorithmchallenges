public class Solution {
  public List<String> fizzBuzz(int n) {
    List<String> myList = new ArrayList<String>();
    for(int i = 1; i < n+1; i++){
      String str = "";
      if ((i % 3) == 0){
        str = str + "Fizz";
      }
      if ((i % 5) == 0){
        str = str + "Buzz";
      }
      if ((i % 3) != 0 && (i % 5) != 0){
        str = String.valueOf(i);
      }
      // String str = String.valueOf(i);
      myList.add(str);
    }
    // System.out.println(myList);
    return myList;
  }
}