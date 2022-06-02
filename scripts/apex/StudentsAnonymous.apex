Students st = new Students();
st.firstName = 'David';
st.lastName = 'Angel';
st.classYear = '9';
st.major = 'Electerical';

string mjr = st.generateReport();
system.debug('return debug is: '+ mjr);


Students st2 = new Students();
st2.firstName = 'John';
st2.lastName = 'Parker';
st2.classYear = '8';
st2.major = 'mecanical';

string mjr2 = st2.generateReport();
System.debug('return debug is '+ mjr2);
