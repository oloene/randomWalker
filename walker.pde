/*              
EXPLENATION OF WHERE THE WALKER WALKS TO
ADDING TO VECTORS
                Y
                |
                |
   ( -1 , 1 )   |     ( 1 , 1 )
                |
                |
-------------------------------------X
                |
                |
   ( -1 , -1 )  |     ( 1 , -1 )
                |
                |
*/

class Walker{
  
  PVector distance;
  
  public Walker(PVector distance){
    this.distance = distance;
  }
  
  public void update(){
    double sign = Math.random();
    
    /* -1, 1 */
    if (sign <= 0.25){
      distance.add(-0.5, 0.5);
    }
    
    /* 1, 1 */
    if (sign > 0.25 && sign <= 0.50){
      distance.add(0.5, 0.5);
    }
    
    /* 1, -1 */
    if (sign > 0.50 && sign <= 0.75){
      distance.add(0.5, -0.5);
    }
    
    /* -1, -1 */
    if (sign > 0.75){
      distance.add(-0.5, -0.5);
    }
   
    ellipse(distance.x, distance.y, 4, 4);
  }
  
}