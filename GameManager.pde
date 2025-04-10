// main file that runs the game
int leftArrowLoc = 481+96;
int rightArrowLoc = 1248+96;
int downArrowLoc = 736+96;
int upArrowLoc = 992+96;
int arrowHeight = 778+96;

ArrayList<Note> notes;
float songStartTime;
Pattern pattern;
FeedbackManager feedbackManager = new FeedbackManager();
Player player = new Player();
PFont libreFont;

int currentTrackOption = 0;
PImage background;
PImage leftArrow, rightArrow, upArrow, downArrow;
PImage menuBackground;
PImage trackBackground;

// feedback images
PImage perfectFeedback, goodFeedback, okFeedback, missFeedback;

import processing.sound.*; // Add sound library import

AudioManager easySong;
float songDuration;

boolean menu = true;
boolean trackMenu = false;
boolean easyLevel = false;

void setup() {
  
  imageMode(CENTER);
  size(1920, 1080);

  libreFont = createFont("LibreBaskerville-Regular.ttf", 64);
  // load assets
  background = loadImage("images/backgrounds/menubg.png");
  leftArrow = loadImage("images/arrows/arrowlb.png");
  rightArrow = loadImage("images/arrows/arrowrb.png");
  upArrow = loadImage("images/arrows/arrowub.png");
  downArrow = loadImage("images/arrows/arrowdb.png");
  
  perfectFeedback = loadImage("images/feedbacks/mikuperfect.png");
  goodFeedback = loadImage("images/feedbacks/mikugood.png");
  okFeedback = loadImage("images/feedbacks/mikuok.png");
  missFeedback = loadImage("images/feedbacks/mikumiss.png");

  menuBackground = loadImage("images/backgrounds/mainscreen.png");
  trackBackground = loadImage("images/backgrounds/menubg.png");
  
  easySong = new AudioManager(this, "sound/easysongNEW.mp3");
  songDuration = easySong.getDuration();

  songStartTime = millis();
  fullScreen();
} 

void draw() {
  
    if (menu){
      background(menuBackground);
    }
    else if(trackMenu){
      background(trackBackground);
      
      PImage menuTitle;
      PImage exitButton;
      PImage optionButton;
      PImage highlightedButton;
      PImage difficultyButton;
      PImage songTitle;
      PImage albumIcon;
      
      menuTitle = loadImage("images/texts/choosetrackheader.png");
      exitButton = loadImage("images/buttons/exitbutton.png");
      optionButton = loadImage("images/buttons/selectionboxinactive.png");
      highlightedButton = loadImage("images/buttons/selectionboxactive.png");
      albumIcon = loadImage("images/album.png");
      
      imageMode(CENTER);
      image(menuTitle, width/2, 96);
      
      // logic to check if mouse is inside exit button
      if (mouseX > ((width/6) - (exitButton.width/2)) && 
          mouseX < ((width/6) + (exitButton.width/2)) &&
          mouseY > (96 - (exitButton.height/2)) &&
          mouseY < (96 + (exitButton.height/2))) {
                  exitButton = loadImage("images/buttons/exitbuttonhighlighted.png");
          }
      image(exitButton, width/6, 96);
      
      // song choices
      image(optionButton, width/2, 254 + 90);
      image(optionButton, width/2, 481 + 90);
      image(optionButton, width/2, 708 + 90);
      
      if (currentTrackOption == 0) {
        image(highlightedButton, width/2, 254 + 90);
      } else if (currentTrackOption == 1) {
        image(highlightedButton, width/2, 481 + 90); 
      } else if (currentTrackOption == 2) {
        image(highlightedButton, width/2, 708 + 90); 
      }
      
      image(albumIcon, width/6 + 24, 254 + 90);
      image(albumIcon, width/6 + 24, 481 + 90);
      image(albumIcon, width/6 + 24, 708 + 90);
      
      // text and difficulty for the options
      songTitle = loadImage("images/texts/easytitle.png");
      difficultyButton = loadImage("images/buttons/easybutton.png");
      
      image(songTitle, 2*width/5 + 64, 254 + 90);
      image(difficultyButton, 6*width/8, 254 + 90);
      
      songTitle = loadImage("images/texts/mediumtitle.png");
      difficultyButton = loadImage("images/buttons/mediumbutton.png");
      
      image(songTitle, 2*width/5 + 64, 481 + 90);
      image(difficultyButton, 6*width/8, 481 + 90);
      
      songTitle = loadImage("images/texts/hardtitle.png");
      difficultyButton = loadImage("images/buttons/hardbutton.png");
      
      image(songTitle, 2*width/5 + 64, 708 + 90);
      image(difficultyButton, 6*width/8, 708 + 90);
    }
    else if(easyLevel){
      background(background);
      player.displayScore();
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
       feedbackManager.displayFeedback();
    }
}

// if a key is pressed
void keyPressed() {
    if (menu && key == ' ') {
      menu = false;
      trackMenu = true;
      return;
    }
    else if (trackMenu) {
        // Handle scrolling options
        if (keyCode == DOWN && currentTrackOption < 2) {
            currentTrackOption++; // Move down
        } else if (keyCode == UP && currentTrackOption > 0) {
            currentTrackOption--; // Move up
        }
        if (trackMenu && keyCode == ENTER) {
        // Choose the option based on currentOption
          if (currentTrackOption == 0) {
              trackMenu = false;
              easyLevel = true;
              songStartTime = millis();
              easySong.play(); // Start song
              notes = new ArrayList<Note>();
            pattern = new Pattern();
            notes = pattern.easyLevel();

          } else if (currentTrackOption == 1) {
              // Add logic for option 1
          } else if (currentTrackOption == 2) {
              // Add logic for option 2
          }
          return;
        }
        return;
    } 
    else{
      for (Note n : notes) {
        if (n.isActive && n.checkHit(keyCode, feedbackManager, player)) {
            n.isHit = true;
            break;
        }
      }
    }
  
}
