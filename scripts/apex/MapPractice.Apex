// Store the currency exchange rate values in a Map named ‘currISOCodeAndExchangeRateMap’ 
// for any 5 currency ISO codes. Like below:  
// a. AUD => 0.73  
// b. CAD => 0.78  
// c. EUR => 1.13  
// d. NZD => 0.68  
// e. INR => 0.013 
// 2.Fetch  the currency conversion rate for any one currency ISO code and print it.  
// 3. Check if the above Map have conversion rate for SAD ISO code.  
// 4. Collect all the curreny ISO codes from currISOCodeAndExchangeRateMap for which the 
// conversion rate is >= 1 in one variable and other iso codes in other variable. Expected Output: 
// EUR – In one variable AUD, CAD, NZD, and INR – In another variable


Map<String, Decimal> currISOCodeAndExchangeRateMap = new Map<String, Decimal>();
currISOCodeAndExchangeRateMap.put('AUD', 0.73);
currISOCodeAndExchangeRateMap.put('CAD', 0.78);
currISOCodeAndExchangeRateMap.put('EUR', 1.13);
currISOCodeAndExchangeRateMap.put('NZD', 0.68);
currISOCodeAndExchangeRateMap.put('Inr', 0.013);
system.debug('My map list: ' + currISOCodeAndExchangeRateMap);


// // 2. Fetch  the currency conversion rate for any one currency ISO code and print it.  
// for (string eachKey: currISOCodeAndExchangeRateMap.keySet()){
//      system.debug('Bu ' + eachKey + ' icin currency rate is ' + currISOCodeAndExchangeRateMap.get(eachKey));
// }


// //3. Check if the above Map have conversion rate for SAD ISO code. 
// Boolean checkSAD = currISOCodeAndExchangeRateMap.containsKey('SAD');
// system.debug( checkSAD);


// // 4. Collect all the curreny ISO codes from currISOCodeAndExchangeRateMap for which the 
// // conversion rate is >= 1 in one variable and other iso codes in other variable. Expected Output: 
// // EUR – In one variable AUD, CAD, NZD, and INR – In another variable.
// set<string> moreThan1 = new set<string>();
// set<string> lessThan1 = new set<string>();


// for (decimal eachRate: currISOCodeAndExchangeRateMap.values()){
//     if(eachRate >=1){
//         moreThan1.add(currISOCodeAndExchangeRateMap.get(eachRate));
//     }else {
//         lessThan1.add(currISOCodeAndExchangeRateMap.get(eachRate));
//     }
// }
//     system.debug(' 1 den buyuklerin seti : '+ moreThan1);
//     system.debug(' 1 den kucuklerin seti : '+ lessThan1);










decimal converRate = currISOCodeAndExchangeRateMap.get('EUR');
system.debug('Euro to Usd rate: ' + converRate);

Boolean checkSAD = currISOCodeAndExchangeRateMap.containsKey('SAD');
system.debug('Does map contain SAD? ' + checkSAD);

set<string> moreThanEqualUSD = new set<string>();
set<string> lessThanUSD = new set<string>();

for( string eachNumber: currISOCodeAndExchangeRateMap.keySet()){
    if(currISOCodeAndExchangeRateMap.get(eachNumber)>=1){
        moreThanEqualUSD.add(eachNumber);

    }else {
        lessThanUSD.add(eachNumber);
    }
}
    system.debug('all iso code more than 1 ' + moreThanEqualUSD);
    system.debug('all iso code less than 1 ' + lessThanUSD);




