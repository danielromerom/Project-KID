// class that holds the information for all the individual notes in a level
PImage feedbackImage;

class Note {
  float x, y; // position 
  float speed; // speed at which the note moves
  boolean isHit; // checks if the note has been hit
  String type; // left right up or down
  PImage sprite; // sprite image for note
  float spawnTime; // time in seconds when the note should appear
  boolean isActive; // tracks if the note should be drawn
  boolean isHeldNote; // true if this is a held note
  float holdDuration; // duration for which the note must be held (in seconds)
  boolean isHolding; // tracks if the player is currently holding the note
  float holdStartTime; // time when the player started holding the key
  int clearedSegments = 0;
  ArrayList<Boolean> segmentCleared; // Track each segment's cleared state
  ArrayList<Float> segmentPositions; // Track each segment's Y position
  float segmentSpacing;
  int totalSegments;
  boolean holdStarted = false;
  
  // constructor for normal notes
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
  
  // constructor for held notes
  Note(float x, float y, float speed, String type, float spawnTime, boolean isHeldNote, float holdDuration) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.isHit = false;
    this.type = type;
    this.spawnTime = spawnTime;
    this.isActive = false;
    this.isHeldNote = isHeldNote;
    this.holdDuration = holdDuration;
    this.isHolding = false;
    loadSprite();
    
    if (isHeldNote) {
      initializeSegments();
    }
  }
   
  void initializeSegments() {
    segmentSpacing = sprite.height * 0.1f;
    totalSegments = int(holdDuration * frameRate);
    segmentCleared = new ArrayList<Boolean>();
    segmentPositions = new ArrayList<Float>();
    
    for (int i = 0; i < totalSegments; i++) {
      segmentPositions.add(y - (i * segmentSpacing));
      segmentCleared.add(false);
    }
  }
  
  // loads the sprite based on the type
  void loadSprite() {
    if (type.equals("left")) {
      if (isHeldNote) {
        sprite = loadImage("images/arrows/arrowlf.png");                
      }
      else {
        sprite = loadImage("images/arrows/arrowlh.png");        
      }
    } else if (type.equals("right")) {
      if (isHeldNote) {
        sprite = loadImage("images/arrows/arrowrf.png");                 
      }
      else {
        sprite = loadImage("images/arrows/arrowrh.png");      
      }
    } else if (type.equals("up")) {
      if (isHeldNote) {
        sprite = loadImage("images/arrows/arrowuf.png");                  
      }
      else {
        sprite = loadImage("images/arrows/arrowuh.png");         
      }
    } else if (type.equals("down")) {
      if (isHeldNote) {
        sprite = loadImage("images/arrows/arrowdf.png");                  
      }
      else {
        sprite = loadImage("images/arrows/arrowdh.png");      
      }
    }
  }
  
  void update(float currentSongTime) {
    if (currentSongTime >= spawnTime) {
      isActive = true;
      y += speed;
      
      // Update all segment positions
      if (segmentPositions != null) {
        for (int i = 0; i < segmentPositions.size(); i++) {
          segmentPositions.set(i, segmentPositions.get(i) + speed);
        }
        
        if (isHeldNote && !holdStarted && y > arrowHeight + 78) {
          isHit = true;
          //feedbackManager.addFeedback(missFeedback, millis());
        }
      }
    }
  }
  
  void display() {
    if (sprite != null && isActive) {
      if (!isHeldNote) {
        image(sprite, x, y, sprite.width, sprite.height);
      } else {
        float relativeY = y; // Correct Y position for base note
        image(sprite, x, relativeY, sprite.width, sprite.height);

        // Render segments in forward order, positioning them relative to base
        for (int i = 0; i < segmentPositions.size(); i++) {
          float segmentY = segmentPositions.get(i);

          if (segmentY < arrowHeight + sprite.height) {
            if (!segmentCleared.get(i)) {
              image(sprite, x, segmentY, sprite.width, sprite.height);
            }

            // Debug text
            fill(segmentCleared.get(i) ? 0 : 255, 0, 0);
            textSize(12);
            // debugging tool
            // text("Seg: " + i + "\nY: " + nf(segmentY, 1, 1), x + 50, segmentY);
          }
        }
      }
    }
  }
  
  boolean checkHit(int keyCode, FeedbackManager feedbackManager, Player player) {
    // Check if the key pressed matches the note type
    if ((type.equals("left") && keyCode == LEFT) ||
        (type.equals("right") && keyCode == RIGHT) ||
        (type.equals("up") && keyCode == UP) ||
        (type.equals("down") && keyCode == DOWN)) {
        
         if (!isHeldNote) {
          return checkNormalHit(feedbackManager, player);
        } else { 
          return checkHeldHit(feedbackManager, player);
        } 
    }
    return false; // key pressed doesn't match the note type
  }
  
  boolean checkNormalHit(FeedbackManager feedbackManager, Player player) {
    // Check y position for feedback
    if (y > arrowHeight - 30 && y < arrowHeight + 30 ) {
        feedbackManager.addFeedback(perfectFeedback, millis());
        player.addPoints(300);
        return true; // successfully hit the note
    } else if (y > arrowHeight - 60 && y < arrowHeight + 60) {
        feedbackManager.addFeedback(goodFeedback, millis());
        player.addPoints(200);
        return true; // still a hit but less accurate
    } else if (y > arrowHeight - 90 && y < arrowHeight + 90) {
        feedbackManager.addFeedback(okFeedback, millis());
        player.addPoints(100);
        return true; // barely hit the note
    } else {
        feedbackManager.addFeedback(missFeedback, millis());
        return true; // missed note
    } 
  }
  
  boolean checkHeldHit(FeedbackManager feedbackManager, Player player) {
    if (!holdStarted) {
      // Initial hit check
      if (y > arrowHeight - 8 && y < arrowHeight + 8) {
        startHold(player, feedbackManager, perfectFeedback, 10);
        return true;  
      } else if (y > arrowHeight - 48 && y < arrowHeight + 48) {
        startHold(player, feedbackManager, goodFeedback, 7);
        return true; 
      } else if (y > arrowHeight - 78 && y < arrowHeight + 78) {
        startHold(player, feedbackManager, okFeedback, 5);
        return true; 
      } else {
        return true;
      }
    } else {
      maintainHold(player, feedbackManager);
    }
    return false;
  }

  void startHold(Player player, FeedbackManager fm, PImage feedback, int points) {
    holdStarted = true;
    isHolding = true;
    holdStartTime = millis();
    player.addPoints(points);
    fm.addFeedback(feedback, millis());
  }

  void forceMiss(FeedbackManager fm) {
    isHit = true;
    fm.addFeedback(missFeedback, millis());
  }

  void maintainHold(Player player, FeedbackManager fm) {
    float elapsedHoldTime = (millis() - holdStartTime) / 1000.0;
    
    // Clear segments that have passed the hit area
    for (int i = 0; i < segmentPositions.size(); i++) {
      if (!segmentCleared.get(i) && segmentPositions.get(i) > arrowHeight) {
        segmentCleared.set(i, true);
        player.addPoints(1); // Segment cleared bonus
      }
    }
    
    if (elapsedHoldTime >= holdDuration) {
      isHit = true;
      player.addPoints(150); // Completion bonus
      fm.addFeedback(perfectFeedback, millis());
    }
  }
  
  boolean isOffScreen() {
    if (!isHeldNote) {
      return y > height;
    }
    // For held notes, check if all segments are past the screen
    return segmentPositions.size() > 0 && 
           segmentPositions.get(segmentPositions.size()-1) > height;
  }
}
