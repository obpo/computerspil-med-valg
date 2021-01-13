
class Scene {
  
  String background;
  
  ArrayList<Line> lines = new ArrayList<Line>();
  
  Scene(String startBgIMG) {
    this.background = startBgIMG;
  }
  
  // Add a defined line to the arraylist
  void addLine(Line l) {
    lines.add(l);
  }
  
}
