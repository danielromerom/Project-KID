ArrayList<Note> notes;
float songStartTime;

PImage background;
PImage leftArrow, rightArrow, upArrow, downArrow;

void setup() {
  imageMode(CENTER);
  size(1920, 1080);
  background = loadImage("images/backgrounds/menubg.png");
  leftArrow = loadImage("images/arrows/arrowlb.png");
  rightArrow = loadImage("images/arrows/arrowrb.png");
  upArrow = loadImage("images/arrows/arrowub.png");
  downArrow = loadImage("images/arrows/arrowdb.png");

  notes = new ArrayList<Note>();
  
  notes.add(new Note(481+96, 0, 5, "left", 1.0)); 
  notes.add(new Note(736+96, 0, 10, "right", 3.0)); 
  notes.add(new Note(992+96, 0, 15, "down", 6.0)); 

  songStartTime = millis();
  fullScreen();
} 

void draw() {
    background(background);
    float currentSongTime = (millis() - songStartTime) / 1000.0;
    
    image(leftArrow, 481+96, 778+96);
    image(rightArrow, 736+96, 778+96);
    image(downArrow, 992+96, 778+96);
    image(upArrow, 1248+96, 778+96);

    for (int i = notes.size() - 1; i >= 0; i--) {
        Note n = notes.get(i);
        n.update(currentSongTime);
        n.display();

        if (n.isHit || n.isOffScreen()) {
            notes.remove(i);
        }
    }
}

void keyPressed() {
    for (Note n : notes) {
        if (n.isActive && n.checkHit(keyCode)) {
            n.isHit = true;
            break;
        }
    }
}
