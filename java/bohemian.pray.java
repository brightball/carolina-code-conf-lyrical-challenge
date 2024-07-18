// VERSE 2 -- He chooses to say goodbye on a good note and not run away!  
// How this relates to code:  close or quit any resources to free them (Java Selenium)

public class Goodbye {
  public static void main(String[] args)  {
      WebDriver driver = new ChromeDriver();
      driver.close();  // closes the function and driver on a good note.  Otherwise, it could cause memory leaks.
      System.out.println("Goodbye! I am facing the truth today finally!");
}
}
