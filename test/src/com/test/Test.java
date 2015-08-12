package com.test;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Test {
  public static void main(String[] args1) {
	  Pattern pattern = Pattern.compile("[A-Za-z]+");
	  Matcher matcher = pattern.matcher("ASDADFASDsa");
	  boolean b= matcher.matches();
	  System.out.println(b);
	  System.out.println(b);
	  System.out.println(b);

}
}
