
// // Create a List named as coloursList, store at least 5 colourNames in it and print it.  
// 2. Print the size of the above created List.  
// 3. Check if the coloursList contains ‘Red’ colour in it or not.  
// 4. Retrieve the last element of the List and print it in the upper case.  
// 5. Make the fourth element in the List as Upper case.  
// 6. Create a different List named colourCodesList in which we need to store some colourcodes. For 
// example: ‘#FF0000’ is code for red colour.  
// 7. Compare if the two lists colourCodesList and coloursList are equal or not.  
// 8. Merge the two Lists (colourCodesList, coloursList) and print the newly created list



List<string>  coloursList = new List<String>();

coloursList.add('white');
coloursList.add('Pink');
coloursList.add('blue');
coloursList.add('green');
coloursList.add('red');

system.debug('The names of the colors are '  + coloursList);
system.debug('The colour list size of '+ coloursList.size());
system.debug(coloursList.contains('Red'));


string lastElement = coloursList.get(coloursList.size()-1);
system.debug(lastElement.toUpperCase());

string index4 = coloursList.get[3];
system.debug(index4.toUpperCase());

List<string> colourCodesList = new List<string>{'#FF0000','#FF0001','#FF0002','#FF0003'};
System.debug(colourCodesList);

system.debug(coloursList.equals(colourCodesList));

// List<string> mergeList = new List<string>();
// mergeList.addAll(coloursList);
// mergeList.addAll(colourCodesList);

colourCodesList.addAll(coloursList);
system.debug('My new list ' + colourCodesList);




