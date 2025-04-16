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
PImage pressSpace;
PImage leftArrow, rightArrow, upArrow, downArrow;
PImage leftArrowb, rightArrowb, upArrowb, downArrowb;
PImage leftArrowbp, rightArrowbp, upArrowbp, downArrowbp;
PImage menuBackground;
PImage trackBackground;
PImage easyTrackBackground;
PImage mediumTrackBackground;
PImage hardTrackBackground;

// feedback images
PImage perfectFeedback, goodFeedback, okFeedback, missFeedback;
PImage gradeSS, gradeS, gradeA, gradeB, gradeC, gradeD, gradeF;

import processing.sound.*; // Add sound library import

AudioManager easySong;
AudioManager mediumSong;
AudioManager hardSong;
AudioManager hitSound;
AudioManager toggleSound;
AudioManager enterSound;
AudioManager sparkleSound;

float easySongDuration;
float mediumSongDuration;
float hardSongDuration;
float hitSoundDuration;
float toggleSoundDuration;
float enterSoundDuration;
float sparkleSoundDuration;
int maxScore;

boolean menu = true;
boolean trackMenu = false;
boolean easyLevel = false;
boolean mediumLevel = false;
boolean hardLevel = false;
boolean resultsScreen = false;

void setup() {
  
  imageMode(CENTER);
  size(1920, 1080);

  libreFont = createFont("LibreBaskerville-Regular.ttf", 64);
  // load assets
  background = loadImage("images/backgrounds/menubg.png");
  
  leftArrowb = loadImage("images/arrows/arrowlb.png");
  leftArrowbp = loadImage("images/arrows/arrowlbp.png");
  leftArrow = leftArrowb;
  
  rightArrowb = loadImage("images/arrows/arrowrb.png");
  rightArrowbp = loadImage("images/arrows/arrowrbp.png");
  rightArrow = rightArrowb;
  
  upArrowb = loadImage("images/arrows/arrowub.png");
  upArrowbp = loadImage("images/arrows/arrowubp.png");
  upArrow = upArrowb;
  
  downArrowb = loadImage("images/arrows/arrowdb.png");
  downArrowbp = loadImage("images/arrows/arrowdbp.png");
  downArrow = downArrowb;
  
  perfectFeedback = loadImage("images/feedbacks/mikuperfect.png");
  goodFeedback = loadImage("images/feedbacks/mikugood.png");
  okFeedback = loadImage("images/feedbacks/mikuok.png");
  missFeedback = loadImage("images/feedbacks/mikumiss.png");

  menuBackground = loadImage("images/backgrounds/mainscreen.png");
  trackBackground = loadImage("images/backgrounds/menubg.png");
  easyTrackBackground = loadImage("images/backgrounds/easybg.png");
  mediumTrackBackground = loadImage("images/backgrounds/mediumbg.png");
  hardTrackBackground = loadImage("images/backgrounds/hardbg.png");

  easySong = new AudioManager(this, "sound/easysongNEW.mp3");
  mediumSong = new AudioManager(this, "sound/mediumsongNEW.mp3");
  hardSong = new AudioManager(this, "sound/hardsongNEW.mp3");
  hitSound = new AudioManager(this, "sound/cymbal2.mp3");
  toggleSound = new AudioManager(this, "sound/menutoggle.mp3");
  enterSound = new AudioManager(this, "sound/menuclick.mp3");
  sparkleSound = new AudioManager(this, "sound/sparkle.mp3");

  easySongDuration = easySong.getDuration();
  mediumSongDuration = mediumSong.getDuration();
  hardSongDuration = hardSong.getDuration();
  hitSoundDuration = hitSound.getDuration();
  toggleSoundDuration = toggleSound.getDuration();
  enterSoundDuration = enterSound.getDuration();
  sparkleSoundDuration = sparkleSound.getDuration();
  
  pressSpace = loadImage("images/texts/pressspace.png");
  gradeSS = loadImage("images/scores/SS.png");
  gradeS = loadImage("images/scores/S.png");
  gradeA = loadImage("images/scores/A.png");
  gradeB = loadImage("images/scores/B.png");
  gradeC = loadImage("images/scores/C.png");
  gradeD = loadImage("images/scores/D.png");
  gradeF = loadImage("images/scores/F.png");

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
    else if(easyLevel || mediumLevel || hardLevel){
      if (easyLevel) {
        background(easyTrackBackground);
      }
      if (mediumLevel) {
        background(mediumTrackBackground);
      }
      if (hardLevel) {
        background(hardTrackBackground);
      }
       
      player.displayScore();
      float currentSongTime = (millis() - songStartTime) / 1000.0;
  
      image(leftArrow, leftArrowLoc, arrowHeight);
      image(rightArrow, rightArrowLoc, arrowHeight);
      image(downArrow, downArrowLoc, arrowHeight);
      image(upArrow, upArrowLoc, arrowHeight);
      
      // check if keys are being pressed and highlight button
      if (keyCode == LEFT && keyPressed) {
        leftArrow = leftArrowbp;
      } else {
        leftArrow = leftArrowb;
      }
      
      if (keyCode == RIGHT && keyPressed) {
        rightArrow = rightArrowbp;
      } else {
        rightArrow = rightArrowb;
      }
      
      if (keyCode == DOWN && keyPressed) {
        downArrow = downArrowbp;
      } else {
        downArrow = downArrowb;
      }
      
      if (keyCode == UP && keyPressed) {
        upArrow = upArrowbp;
      } else {
        upArrow = upArrowb;
      }
      
      // load notes from array
      for (int i = notes.size() - 1; i >= 0; i--) {
          Note n = notes.get(i);
          n.update(currentSongTime);
          n.display();
  
          if (n.isHit || (n.isOffScreen() && !n.isHeldNote)) {
              notes.remove(i);
          }
       }
       feedbackManager.displayFeedback();
       
       if (easyLevel) {
         if (currentSongTime >= easySongDuration) {
           maxScore = 5000;
           easySong.stop();
           easyLevel = false;
           resultsScreen = true;
           return;
         }
       }
       
       if (mediumLevel) {
         if (currentSongTime >= mediumSongDuration) {
            maxScore = 0;
            mediumSong.stop();
            mediumLevel = false;
            resultsScreen = true;
            return;
          }
       }
       
       if (hardLevel) {
         if (currentSongTime >= hardSongDuration) {
            maxScore = 100000;
            hardSong.stop();
            hardLevel = false;
            resultsScreen = true;
            return;
          }
       }
    }
    else if (resultsScreen) {
      background(trackBackground);
      
      float percentage = (float) player.score / maxScore * 100;
      
      imageMode(CENTER);
      
      if (percentage >= 95) {
        image(gradeSS, width / 4, height / 2);
      } else if (percentage >= 90) {
        image(gradeS, width / 4, height / 2);
      } else if (percentage >= 80) {
        image(gradeA, width / 4, height / 2);
      } else if (percentage >= 70) {
        image(gradeB, width / 4, height / 2);
      } else if (percentage >= 60) {
        image(gradeC, width / 4, height / 2);
      } else if (percentage >= 50) {
        image(gradeD, width / 4, height / 2);
      } else {
        image(gradeF, width / 4, height / 2);
      }
      
      player.displayResult();
      image(pressSpace, width/2, height-pressSpace.height);
   }
}

// if a key is pressed
void keyPressed() {
  if (menu) {
    if (key == ' ') {
      sparkleSound.play();
      menu = false;
      trackMenu = true;
    }
    return;
  }
  else if (trackMenu) {
      // Handle scrolling options
      if (keyCode == DOWN && currentTrackOption < 2) {
          currentTrackOption++;
          toggleSound.play();
          // Move down
      } else if (keyCode == UP && currentTrackOption > 0) {
          currentTrackOption--; // Move up
          toggleSound.play();
      }
      if (trackMenu && keyCode == ENTER) {
      // Choose the option based on currentOption
        enterSound.play();
        if (currentTrackOption == 0) {
          trackMenu = false;
          easyLevel = true;
          songStartTime = millis();
          easySong.play(); // Start song
          notes = new ArrayList<Note>();
          pattern = new Pattern();
          notes = pattern.easyLevel();
        } else if (currentTrackOption == 1) {
          trackMenu = false;
          mediumLevel = true;
          songStartTime = millis();
          mediumSong.play(); // Start song
          notes = new ArrayList<Note>();
          pattern = new Pattern();
          //notes = pattern.mediumLevel();
        } else if (currentTrackOption == 2) {
          trackMenu = false;
          hardLevel = true;
          songStartTime = millis();
          hardSong.play(); // Start song
          notes = new ArrayList<Note>();
          pattern = new Pattern();
          //notes = pattern.hardLevel();
        }
        return;
      }
      return;
  } 
  else if (resultsScreen) {
    if (key == ' ') {
      resultsScreen = false;
      trackMenu = true;
      player.setPoints(0);
    }
    return;
  }
  else {
    for (Note n : notes) {
      if (!n.isHit && n.isActive && n.checkHit(keyCode, feedbackManager, player)) {
        if (!n.isHeldNote) {
          n.isHit = true;  
          //hitSound.play();
        }
        break;
      }
    }
  }
}

//void keyReleased() {
   //if (easyLevel || mediumLevel || hardLevel) {
     //for (Note n : notes) {
       //if (n.isHeldNote && n.isHolding && !n.isHit) { 
         //float elapsedHoldTime = (millis() - n.holdStartTime) / 1000.0;
         //if (elapsedHoldTime >= n.holdDuration) { 
           //n.isHit = true; 
           //feedbackManager.addFeedback(perfectFeedback, millis());
           //player.addPoints(150); // Bonus points for completing a held note
         //} else { 
           //feedbackManager.addFeedback(missFeedback, millis());
         //}
         //n.isHolding = false; 
       //}
    //}
  //}
//}
