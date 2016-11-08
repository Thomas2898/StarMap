//Thomas cronin
//C15529497
void setup()
{
  background(0);
  size(800, 800);
  
 loadData();
 printStars();
 gridLines();
 starPlot();
}

void loadData()
{
  Table t = loadTable("HabHYG15ly.csv", "header");
  stars.clear();
  for(int i = 0 ; i < t.getRowCount() ; i++)
  {
    TableRow row = t.getRow(i);
    Star star = new Star(row);
    stars.add(star);
    println(star);
  }
}

void printStars()
{
  
}

void gridLines()
{
  stroke(255, 0, 255);
  int n = -5;
  float boarder = 50;
  for(int i = 0; i < 11 ; i++)
  {
    float x = map(i, 0, 11, 50, width);
    line(x, boarder, x, height - boarder);
    text(n, x, boarder - 20);
    n++;
  }
  
  n = -5;
  for(int i = 0; i < 9 ; i++)
  {
    float y = map(i, 0, 9, 50, width - 50);
    line(boarder, y, width - boarder, y);
    text(n, boarder - 20, y);
    n++;
  }
  
  for(Star star:stars)
  {
    float xstar = star.Xg;
    float ystar = star.Yg;
    
    stroke(255, 0, 0);
    point(xstar, ystar);
  }
  
  /*
  Table t = loadTable("HabHYG15ly.csv", "header");
  stars.clear();
  for(int i = 0 ; i < t.getRowCount() ; i++)
  {
    TableRow row = t.getRow(i);
    Star star = new Star.getFloat(row, 13);
  }
 */
 
}

void starPlot()
{
  
}

  ArrayList<Star> stars = new ArrayList<Star>();