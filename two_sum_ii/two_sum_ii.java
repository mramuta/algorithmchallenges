public class Solution {
    public int[] twoSum(int[] numbers, int target) {
        HashMap<Integer, Integer> hmap = new HashMap<Integer, Integer>();
        int num_len = numbers.length;
        int i = 0;
        while (i < num_len){
        	int number = numbers[i];
        	
        	if (number == target / 2 && hmap.get(number) != null){
        	    return new int[] {hmap.get(number) + 1,i + 1};
        	}
        	hmap.put(number,i);
        	if (hmap.get(target-number) != null && hmap.get(target-number) != i){
        	        return new int[] {hmap.get(target-number) + 1,i + 1};
        	}
        	i++;
        }
        int[] arr = {0,2}; 
        return arr;
    }
}
