import java.time.Period;
import java.time.LocalDate;

void setup() {     
       Period me = getAge(1972,7,15);
       Period you = getAge(1974,9,10);
       println("I am " + me.getYears() +" years and "+me.getMonths()+" months");
       println("You are " + you.getYears() +" years and "+you.getMonths()+" months");
       println("Age difference: "+getDifference(me, you));    
}

private String getDifference(Period me, Period you){
  String s;
  s =  Math.abs(you.minus(me).getYears())+" year and "+Math.abs(you.minus(me).getMonths())+" months and "+Math.abs(you.minus(me).getDays())+" days";
 return s;
}

private Period getAge(int year, int month, int day){
  LocalDate birthday = LocalDate.of(year,month,day); 
  // Get today with LocalDate.now() method
  LocalDate today = LocalDate.now();
  //Get period between birthday and today 
  Period period = Period.between(birthday, today);   
  return period;
}
