// main file that runs the game
int leftArrowLoc = 481+96;
int rightArrowLoc = 736+96;
int downArrowLoc = 992+96;
int upArrowLoc = 1248+96;
int arrowHeight = 778+96;

ArrayList<Note> notes;
float songStartTime;

PImage background;
PImage leftArrow, rightArrow, upArrow, downArrow;

import processing.sound.*; // Add sound library import

AudioManager easySong;
float songDuration;

void setup() {
  imageMode(CENTER);
  size(1920, 1080);
  
  // load assets
  background = loadImage("images/backgrounds/menubg.png");
  leftArrow = loadImage("images/arrows/arrowlb.png");
  rightArrow = loadImage("images/arrows/arrowrb.png");
  upArrow = loadImage("images/arrows/arrowub.png");
  downArrow = loadImage("images/arrows/arrowdb.png");
  
  
  easySong = new AudioManager(this, "sound/easysong.mp3");
  songDuration = easySong.getDuration();
  easySong.play();

  // add notes to an array of notes (level design)
  notes = new ArrayList<Note>();
  
  notes.add(new Note(leftArrowLoc, 0, 5, "left", 1.0)); 
  notes.add(new Note(rightArrowLoc, 0, 5, "right", 1.0)); 

  notes.add(new Note(rightArrowLoc, 0, 10, "right", 3.0)); 
  notes.add(new Note(downArrowLoc, 0, 15, "down", 6.0)); 

  songStartTime = millis();
  fullScreen();
} 

void draw() {
    background(background);
    float currentSongTime = (millis() - songStartTime) / 1000.0;

    image(leftArrow, leftArrowLoc, arrowHeight);
    image(rightArrow, rightArrowLoc, arrowHeight);
    image(downArrow, downArrowLoc, arrowHeight);
    image(upArrow, upArrowLoc, arrowHeight);
    
    
    // check if keys are being pressed and highlight button
    if (keyCode == LEFT && keyPressed) {
      leftArrow = loadImage("images/arrows/arrowlbp.png");
    } else {
      leftArrow = loadImage("images/arrows/arrowlb.png");
    }
    
    if (keyCode == RIGHT && keyPressed) {
      rightArrow = loadImage("images/arrows/arrowrbp.png");
    } else {
      rightArrow = loadImage("images/arrows/arrowrb.png");
    }
    
    if (keyCode == DOWN && keyPressed) {
      downArrow = loadImage("images/arrows/arrowdbp.png");
    } else {
      downArrow = loadImage("images/arrows/arrowdb.png");
    }
    
    if (keyCode == UP && keyPressed) {
      upArrow = loadImage("images/arrows/arrowubp.png");
    } else {
      upArrow = loadImage("images/arrows/arrowub.png");
    }
    
    // load notes from array
    for (int i = notes.size() - 1; i >= 0; i--) {
        Note n = notes.get(i);
        n.update(currentSongTime);
        n.display();

        if (n.isHit || n.isOffScreen()) {
            notes.remove(i);
        }
    }
}

// if a key is pressed
void keyPressed() {
    for (Note n : notes) {
        if (n.isActive && n.checkHit(keyCode)) {
            n.isHit = true;
            break;
        }
    }
}
