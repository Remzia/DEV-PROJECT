public  class OperationsHelper {
public decimal largestOutOfTwoNumbers(decimal a, decimal b) {
    decimal largestDecimal;
    
    if(a>b){
        largestDecimal = a;
    } else {
        largestDecimal = b;
    }
  return largestDecimal;
    
    }

public decimal smallestOutOfThreeNumbers(decimal a, decimal b, decimal c){
    decimal smallestDecimal;

    if ( a < b && a < c ){
        smallestDecimal = a;
    }
    else if ( b < a && b < c ){
        smallestdecimal = b;
    }
    else {
        smallestDecimal = c;
    }
        return smallestDecimal;
    }

    
public static Decimal sumOfNum(List<Decimal> partBList){
    System.debug( 'My list is ' + partBList);
    Decimal sum = 0;

    if(partBList.size() <= 0){

        System.debug('Please provide values to do the operation!');

        } else {

            for(Decimal eachElement : partBList){
            
                sum += eachElement;
              
            }
            system.debug('my total number '+sum);
        }
        
            return sum;
}
        
// public static decimal averageOfNumber(List<Decimal> partBList){
    
//     decimal average;
//      sum = this.sumOfNum(partBList);
//     System.debug(partBList);

//     if(partBList.size() > 0){

//        average = sum / partBList;
//     } else { 
//         System.debug('Please provide values to do the operation!');

//     }
//     return average;
// }

}


















