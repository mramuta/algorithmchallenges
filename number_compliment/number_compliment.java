public class Solution {
    public int findComplement(int num) {
      String numBin =  Integer.toBinaryString(num);   
      char[] numBinArr = numBin.toCharArray();
      for(int i = 0;i < numBinArr.length;i++){
        if(numBinArr[i] == '1'){
          numBinArr[i] = '0';
        }else{
          numBinArr[i] = '1';
        }
      }
      return Integer.parseInt(new String(numBinArr), 2);
    }
}