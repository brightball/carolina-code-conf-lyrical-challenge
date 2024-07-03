public static bool IsThisTheRealLife(this justFantasy){
    if (justFantasy){
        throw new Exception("Caught in a landslide");
    }
    Console.WriteLine("No escape from reality");
    return false;
}
