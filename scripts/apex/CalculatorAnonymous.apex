Calculator obj = new Calculator();
decimal add = obj.DynamicCalulationMethod(9, 3, 'addition');
system.debug('The result is for addition ;' + add);

decimal subs = obj.DynamicCalulationMethod(56, 33, 'substraction');
system.debug('The result is for substraction ' + subs);

decimal div = obj.DynamicCalulationMethod(54, 9, 'division');
system.debug('The result is for division ' + div);

decimal mult = obj.DynamicCalulationMethod(23, 2, 'multuplication');
system.debug('The result is for multiplication ' + mult);