import java.util.*;

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
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  char vowels[] = { 'a','e','i','o','u' };
  for(int j=0;j<sWord.length();j++){
    for(int i=0;i<vowels.length;i++){
      if((sWord.charAt(j) == vowels[i])){
        return j;
      }
    }
  }return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	int first_vowel_out = findFirstVowel(sWord);
	if((first_vowel_out == -1)) {
		return sWord + "ay";
	}
	else if ((first_vowel_out== 0)){
		return sWord + "way";
	} 
	else{
		if((sWord.charAt(0)=='q')&&(sWord.charAt(1)=='u')){
			return sWord.substring(2,sWord.length()) + "qu" + "ay";
		} else {
			return sWord.substring(first_vowel_out,sWord.length())
					+ sWord.substring(0, first_vowel_out) + "ay";
		}
		//return "ERROR!";
	}
}
