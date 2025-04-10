// class to manage player's score  
class Player{
  int score;
  
  Player() {
    score = 0;
  }
  
  void addPoints(int points) {
    score += points;
  }

  void displayScore() {
    
    textAlign(RIGHT);
    textFont(libreFont);
    textSize(64);
    fill(#00ACE0);
    text("Score: " + score, width - 64, height / 10);
  }
}
