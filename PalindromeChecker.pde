public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }

  }
}
public boolean palindrome(String word)
{
  String backletter = onlyLetters(word.toLowerCase());
  System.out.println(backletter);
  String backwards = reverse(backletter);
  if(backwards.equals(backletter))
    return true;
  else //your code here
    return false;
}
public String reverse(String str)
{
    String sNew = new String();
    sNew = "";
    int last = str.length()-1;
      for(int i = last; i>=0; i--)
        sNew = sNew + str.substring(i,i+1);//your code here
    return sNew;
}

public String onlyLetters(String sString){
  String letters = new String();
    for(int i = 0; i <= sString.length()-1; i++)
      if(Character.isLetter(sString.charAt(i)))
        letters = letters + sString.substring(i,i+1);
    return letters;
}


