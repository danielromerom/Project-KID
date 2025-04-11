// class to manage player's score  
class Player{
  int score;
  
  Player() {
    score = 0;
  }
  
  void addPoints(int points) {
    score += points;
  }
  
  void setPoints(int points) {
    score = points; 
  }

  void displayScore() {
    
    textAlign(RIGHT);
    textFont(libreFont);
    textSize(64);
    fill(255);
    text("Score: " + score, width - 64, height / 10);
  }
  
  void displayResult() {
    
    textAlign(CENTER);
    textFont(libreFont);
    textSize(64);
    fill(255);
    text(score, width/4, 3*height/4);
  }
}
