public class Solution {
    public int[] twoSum(int[] nums, int target) {
    HashMap<Integer, Integer> hmap = new HashMap<Integer, Integer>();
    int num_len = nums.length;
    int i = 0;
    while (i < num_len){
    	int number = nums[i];
    	
    	if (number == target / 2 && hmap.get(number) != null){
    	    return new int[] {hmap.get(number),i};
    	}
    	hmap.put(number,i);
    	if (hmap.get(target-number) != null && hmap.get(target-number) != i){
    	        return new int[] {hmap.get(target-number),i};
    	}
    	i++;
    }
    int[] arr = {0,2}; 
    return arr;
  }
}