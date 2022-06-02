public class ListPractice1 {
    public static List<Planets> planetsList = new List<Planets>();

    public string addPlanet(string planetName, integer planetNumber, integer numberOfMoons ){
       string msg;
       
        // planetname;
        // planetNumber;
        // numberOfMoons;

        if(planetName != null && planetName != ''){
            Planets plntObj = new Planets();
            plntObj.name = planetName;
            plntObj.planetNumber = planetNumber;
            plntObj.numberOfMoons = numberOfMoons;
            planetsList.add(plntObj);

            msg = 'Planet added successfully';
           
            // this.name = planetName;
            // this.planetNumber = planetNumber;
            // this.numberOfMoons = numberOfMoons;
            // planetsList.add(......)  
        } else {

            msg = 'Planet without name cannot be added to the list';
        }
        return msg;
    }
}
