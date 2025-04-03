// class that holds the information for all the individual notes in a level

class Note {
  float x, y; // position 
  float speed; // speed at which the note moves
  boolean isHit; // checks if the note has been hit
  String type; // left right up or down
  PImage sprite; // sprite image for note
  float spawnTime; // time in seconds when the note should appear
  boolean isActive; // tracks if the note should be drawn
  
  // constructor for note
  Note(float x, float y, float speed, String type, float spawnTime) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.isHit = false;
    this.type = type;
    this.spawnTime = spawnTime;
    this.isActive = false;
    loadSprite();
  }
   
  // loads the sprite based on the type
  void loadSprite() {
    if (type.equals("left")) {
      sprite = loadImage("images/arrows/arrowlh.png");
    } else if (type.equals("right")) {
      sprite = loadImage("images/arrows/arrowrh.png");
    } else if (type.equals("up")) {
      sprite = loadImage("images/arrows/arrowuh.png");
    } else if (type.equals("down")) {
      sprite = loadImage("images/arrows/arrowdh.png");
    }
  }
  
  void update(float currentSongTime) {
    if (currentSongTime >= spawnTime) {
      isActive = true; // activate note when its spawn time arrives
      y += speed; // move the note downward
    }
  }
  
  void display() {
    if (sprite != null && isActive) {
      image(sprite, x, y, sprite.width, sprite.height);
    } 
  }
  
  boolean checkHit(int keyCode) {
    // Check if the key pressed matches the note type
    if ((type.equals("left") && keyCode == LEFT) ||
        (type.equals("right") && keyCode == RIGHT) ||
        (type.equals("up") && keyCode == UP) ||
        (type.equals("down") && keyCode == DOWN)) {
        
        // Check y position for feedback
        if (y > arrowHeight - 8 && y < arrowHeight + 8 ) {
            println("Perfect!");
            return true; // successfully hit the note
        } else if (y > arrowHeight - 48 && y < arrowHeight + 48) {
            println("Great!");
            return true; // still a hit but less accurate
        } else if (y > arrowHeight - 78 && y < arrowHeight + 78) {
            println("Okay!");
            return true; // barely hit the note
        } else {
            println("Missed!");
            return false; // missed note
        }
    }
    return false; // key pressed doesn't match the note type
  }
  
  boolean isOffScreen() {
    return isActive && y > height; // check if note is past the screen
  }
}
