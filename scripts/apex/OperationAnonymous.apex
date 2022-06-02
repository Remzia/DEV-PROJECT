// OperationsHelper ln = new OperationsHelper();
// decimal largerNum = ln.largestOutOfTwoNumbers(5, 10.2);
// system.debug('Largest number is ' + largerNum);

// OperationsHelper ln2 = new OperationsHelper();
// decimal smallNum = ln2.smallestOutOfThreeNumbers(3.8, 5.9, 9);
// decimal smallNum2 = ln2.smallestOutOfThreeNumbers(4, 3.4, 0.9);
// decimal smallNum3 = ln2.smallestOutOfThreeNumbers(4.9, 8.4, 2.9);

// system.debug('Smallest number is ' + smallNum);
// system.debug('Smallest number is ' + smallNum2);
// system.debug('Smallest number is ' + smallNum3);








List<Decimal> partBList1 = new List<Decimal>{10.5, 15.3, 11.2, 12.1};
OperationsHelper.sumOfNum(partBList1);
List<Decimal> partBList2 = new List<Decimal>{};
OperationsHelper.sumOfNum(partBList2);

// partBList.add(10);
// partBList.add(22);
// partBList.add(88);
// partBList.add(45);
// partBList.add(13);



// ///Murat Hoca'nin
// OperationsHelper partB = new OperationsHelper();
// List<Decimal> partBList = new List<Decimal>{10, 15, 11, 12};
// /*
// partBList.add(10);
// partBList.add(15);
// partBList.add(11);
// partBList.add(12);
// */
// System.debug(‘partBList; ’+partBList );
// /*
// OperationsHelper partBSumObj = new OperationsHelper();
// */
// //System.debug(partB.sumOfNum(partBList));
// //OperationsHelper partBAverageObj = new OperationsHelper();
// System.debug(partB.averageOfNum(partBList));
// System.debug(‘Lowest Number ’+partB.lowOfList(partBList));
// OperationsHelper rp = new OperationsHelper();
// rp.reversePrint(partBList);






















//PART D – Set and Set Class Methods 
// 1. Create a set of strings named as uniqueNameSet with “Tom” and “Jerry” as the default values in 
// it. 
// 2. Print the size of the above created Set. 
// 3. Add new elements in the uniqueNameSet. 
// 4. Check if uniqueNameSet contains your name? 
// 5. Check if the uniqueNameSet is Empty. 
// 6. Clear the set and print it. 
// 7. Now check if the set is empty or not.  
// 8. Is it possible to get an element from a set with the help of an index? If Yes, then please write the 
// code for the same and If No, then why is it not possible 


// set<string> uniqueNameSet = new set<string>{'Tom', 'Jerry'};
// system.debug('My set is ' + uniqueNameSet);
// integer size = uniqueNameSet.size();
// system.debug('My size: ' + size);

// uniqueNameSet.add('Ali');
// uniqueNameSet.add('Veli');
// uniqueNameSet.add('Selami');
// uniqueNameSet.add('John');
// uniqueNameSet.add('James');
// system.debug('My new set is '+ uniqueNameSet);
 

// Boolean checkMyName = uniqueNameSet.contains('Remziye');
// system.debug('Has your set cotain your name? ' + checkMyName );

// Boolean checkEmpty = uniqueNameSet.isEmpty();
// system.debug('Your set is empty or not? ' + checkEmpty);

// uniqueNameSet.clear();
// system.debug('My cleared set is ' + uniqueNameSet);
// Boolean checkEmpty1 = uniqueNameSet.isEmpty();
// system.debug('Your cleared set is empty or not? ' + checkEmpty1);



////////////
// PART E – Maps and Map Class Methods [Extras] 
// 1. Create a Map named zipCodeToCityMap which should contain the Zipcode to City Name 
// mapping. Like below:  
// a. 100101 => New Delhi  
// b. 101234 => Mumbai  
// c. 569023 => New York City  
// 2. Add multiple mappings of your choice in the zipCodeToCityMap Map.  
// 3. Check if the above map contains mapping for 204101.  
// 4. Print all the Zip Codes present in the zipCodeToCityMap.  
// 5. Print all the city names present in the zipCodeToCityMap.  
// 6. Print the number of mappings present in the zipCodeToCityMap.  
// 7. Create a set as uniqueZipCodeSet and populate it with all the Zip codes from zipCodeToCityMap. 
// 8. Create a List as cityNameList and populate it with all the city names from zipCodeToCityMap.  
// 9. Check if the zipCodeToCityMap is Empty.  
// 10.  List down the differences between list and Map 
 
// map< integer , string >   zipCodeToCityMap = new map< integer , string  >();

// zipCodeToCityMap.put(100101,'New Delhi' );
// zipCodeToCityMap.put(101234, 'Mumbai');
// zipCodeToCityMap.put(569023, 'New York City');

// zipCodeToCityMap.put(456789, 'Istanbul');
// zipCodeToCityMap.put(67899, 'California');

// system.debug('My map is ' + zipCodeToCityMap);

// system.debug('My zip cods: ' + zipCodeToCityMap.keySet() );
// system.debug('My cities: ' + zipCodeToCityMap.values());

// Boolean uniqueZipCodeSet = zipCodeToCityMap.containsKey(204101);
// system.debug('Has your map contain 204101 zip cod? ' + uniqueZipCodeSet);

// List<string> cityNameList = zipCodeToCityMap.values();
// system.debug('My cities are ' + cityNameList);

// Set<integer> myZipCode = zipCodeToCityMap.keySet();
// system.debug('My zip Codes are ' + myZipCode);

// system.debug('Total number of map is ' + zipCodeToCityMap.size());

// Boolean empty= zipCodeToCityMap.isEmpty();
// system.debug('Is your map empty? >>>>> ' + empty);
















