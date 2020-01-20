public void setup() {
  String lines[] = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
}
public int findFirstVowel(String sWord) {
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1

for(int i = 0; i < sWord.length(); i++) {
    if(sWord.substring(i,i+1).equals("a") || sWord.substring(i,i+1).equals("e") || sWord.substring(i,i+1).equals("i") || sWord.substring(i,i+1).equals("o") || sWord.substring(i,i+1).equals("u")) {
      return i;
    }
  }
  return -1;
}

public String pigLatin(String sWord) {
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord

    if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay"; 
  }

  if(sWord.substring(0,2).equals("qu")) {
    return ((sWord.substring(2, sWord.length()-1) + "qu") + "ay");
  }
/*f(sWord.substring(0).equals("a") || sWord.substring(0).equals("e") || sWord.substring(0).equals("i") || sWord.substring(0).equals("o") || sWord.substring(0).equals("u")) {
    return (sWord + "way");
  }
  */
  if(findFirstVowel(sWord) == 0) {
    return sWord + "way";
  }
    if(findFirstVowel(sWord) != 0) {
    String a = new String();
    String b = new String(sWord.substring(0, findFirstVowel(sWord)));
    String c = new String(sWord.substring(findFirstVowel(sWord), sWord.length()));
    a = c + b + "ay";
    return a;
  }  
  else
  {
    return "ERROR!";
  }
    }
