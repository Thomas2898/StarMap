void setup()
{
  size(800, 800);
  
 loadData();
}

void loadData()
{
  Table t = loadTable("HabHYG15ly.csv", "header");
  for(int i = 0 ; i < t.getRowCount() ; i++)
  {
    TableRow row = t.getRow(i);
    Star star = new Star(row);
    stars.add(star);
    println(star);
  }
}
ArrayList<Star> stars = new ArrayList<Star>();