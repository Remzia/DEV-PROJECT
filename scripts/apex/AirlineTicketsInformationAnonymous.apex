AirlineTicketsInformation ati =new AirlineTicketsInformation();
ati.departureCities = 'Los Angeles';
ati.arrivalCities = 'Istanbul';
ati.flightNumber = 'TK567';
ati.seatAssignment = '1A';
ati.printTicket();
System.debug('Ticket 1 Detail: ' + ati);

AirlineTicketsInformation ati2 = new AirlineTicketsInformation();
ati2.departureCities = 'California';
ati2.arrivalCities = 'Istanbul';
ati2.flightNumber = 'TK650';
ati2.seatAssignment = '2A';
ati2.printTicket();
System.debug('Ticket 2 detail: ' + ati2);
