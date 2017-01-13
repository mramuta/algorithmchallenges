public class Solution {
  public List<Integer> findDisappearedNumbers(int[] nums) {
    List<Integer> myList = new ArrayList<Integer>();
    int j = nums.length;
    for (int i=0; i < j ; ++i){
      myList.add(i+1);
    }
    while (j > 0){
      myList.set(nums[j-1] - 1, 0); 
      j--;
    }
    myList.removeAll(Arrays.asList(0));
    return myList;
  }
}