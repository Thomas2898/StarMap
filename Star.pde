class Star
{
  String Hab;
  String DisplayName;
  float Distance;
  float Xg, Yg, Zg;
  float AbsMag;
  
  Star(TableRow row)
  {
    Hab = row.getString(2);
    DisplayName = row.getString(3);
    Distance = row.getFloat(12);
    Xg = row.getFloat(13);
    Yg = row.getFloat(14);
    Zg = row.getFloat(15);
    AbsMag = row.getFloat(16);
  }
  
   String toString()
  {
    return Hab + "\t" + DisplayName + "\t" + Distance 
    + "\t" + Xg + "\t" + Yg + "\t" + Zg + "\t" + AbsMag;
  }
}