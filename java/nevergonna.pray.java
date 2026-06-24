// VERSE -- And if you ask me how I'm feeling
// -- Don't tell me you're too blind to see
// How this relates to code: He will wait infinitely forever until I see how he's feeling. An infinite loop and patient mind waits forever until the wait is over for me to see.

public class Main {
  public static void main(String[] args) {
              boolean imNotHappy = true;
              long waitTime = 5;
              long startTime = System.currentTimeMillis();
    while (imNotHappy) {
              long howLongDoIWaitUntilSheSeesMe = System.currentTimeMillis() - startTime;
              System.out.println("How are you feeling?");
      
              if (howLongDoIWaitUntilSheSeesMe >= waitTime) {
                          imNotHappy = false; 
                          System.out.println("I'm no longer blind to see you");
    }
      
    }  
  }
}
