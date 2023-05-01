public class DontStopBelievinTasups {
 public static void main(String[] args) {
     System.out.println("It goes on");
     System.out.println(andOn(3));
 }
 
 public static String andOn(int num) {
     int count = 0;
     String andOn = "";
     while(count < num) {
         andOn += "and on ";
         count++;
     }
     return andOn;
 }
 
}