public class AirlineTicketsInformation {
   public string departureCities = '';
   public string arrivalCities = '';
   public string flightNumber = '';
   public string seatAssignment = '';

   public void printTicket(){
   system.debug ('This ticket is for the journey from ' + departureCities + ' to ' + arrivalCities +'.' );
    }
}