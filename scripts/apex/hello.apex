// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

// string tempvar = 'Enter_your_name_here';
// System.debug('Hello World!');
// System.debug('My name is ' + tempvar);


Account newAcc = new Account();
Account acc = [SELECT id FROM Account WHERE ......ParentId = 'University of Arizona'];
newAcc.name ='Summer Fest LLC';
newAcc.ParentId = acc.Id;
newAcc.Type = 'Technology Partner';
newAcc.Rating = 'Hot';
newAcc.AnnualRevenue = 200000000;
insert newAcc;
