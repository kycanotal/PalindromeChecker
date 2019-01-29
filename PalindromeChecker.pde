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
  String backwards = reverse(word);
  if(backwards.equals(word))
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

public String noCapitals(String lowercase)
{
  String lowercase = new String();
  return lowercase.toLowerCase();
}

public String noSpace(String oneword)
{
  String noSpace = new String();
  int letter = 0;
    for(int i = letter; i <= oneword.length()-1, i++)
      if(oneword.charAt(i) != ' ')
        noSpace = noSpace + oneword.charAt(i);

      return noSpace;
}

