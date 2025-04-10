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
    
    textFont(libreFont);
    textSize(64);
    fill(#00ACE0);
    text("Score: " + score, 4 * width / 5, height / 10);
  }
}
