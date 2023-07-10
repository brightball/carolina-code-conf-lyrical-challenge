public class Room {
    public Room(string description) {
        Description = description;
    }

    public string Description { get; }
    public List<string> Occupants { get; set; }
    public List<string> Aromas { get; set; }
}

var smokyRoom = new Room("smoky");
smokyRoom.Occupants.Add("singer");
smokyRoom.Aromas.AddRange(new[] { "wine", "cheap perfume" });
