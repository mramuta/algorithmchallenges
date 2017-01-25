class arithmetic_slices {
  public int numberOfArithmeticSlices(int[] A) {
 		int slices = 0;
 		for(int i = 0; i < A.length - 1; i++){
 			int diff =	A[i + 1] - A[i];
 			for(int j = i + 1; j < A.length && (A[j] - A[j - 1]) == diff; j++){
 				if (j > i + 1){
					slices += 1;
 				}
  		}
 		}
 		return slices;
 	}

  public static void main(String[] args) {
  	int[] nums = {1,2,3,4};
    System.out.println(new arithmetic_slices().numberOfArithmeticSlices(nums));
  }

}