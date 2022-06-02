public  class Calculator {
    public decimal DynamicCalulationMethod(decimal a, decimal b, string oparation) {

decimal result;

        switch on oparation {
            when 'addition'{
                result = a + b;
            }
            when 'substraction' {
                result = a - b;
            }
            when 'division'{
                result = a / b;
            }
            when 'multuplication'{
                result = a * b;
            }
            when else {
                system.debug('please define proper operation...');
            }
        }

            return result;
    }
}
