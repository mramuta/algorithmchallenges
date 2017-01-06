public char findTheDifference(String s, String t) {
  HashMap<Character, Integer> hmapS = new HashMap<Character, Integer>();
  HashMap<Character, Integer> hmapT = new HashMap<Character, Integer>();
  for (int i = 0; i < t.length(); i++ ){
    if (i < t.length() - 1){
      if (hmapS.get(s.charAt(i)) == null){
        hmapS.put(s.charAt(i),0);
      }else{
        hmapS.put(s.charAt(i),hmapS.get(s.charAt(i))+1);
      }
    }
    if (hmapT.get(t.charAt(i)) == null){
      hmapT.put(t.charAt(i),0);
    }else{
      hmapT.put(t.charAt(i),hmapT.get(t.charAt(i))+1);
    }
  }
  for (int i = 0; i < t.length(); i++ ){
    char a = t.charAt(i);
    if (hmapS.get(a) != hmapT.get(a)){
    //   System.out.println(a);
      return a;
    }
  }
  return 'a';
}
