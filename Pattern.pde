

class Pattern{
  
  ArrayList<Note> pattern_notes;
    int leftArrowLoc = 481+96;
    int rightArrowLoc = 1248+96;
    int downArrowLoc = 736+96;
    int upArrowLoc = 992+96;
    int arrowHeight = 778+96;
  
  // this is the notes pattern for the easy level that goes down the screen
  ArrayList<Note> easyLevel(){
    pattern_notes = new ArrayList<Note>();
    
     //pattern_notes.add(new Note(rightArrowLoc, 0, 11, "right", 1.0, true, 8.0));
    // held note but kinda glitchy
  
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 0.8)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 0.8)); 
    
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 1.4)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 1.4)); 
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 8, "left", 2.3)); 
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 3.7)); 
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 3.9));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 4.3)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 4.5));
    
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 6.1)); 
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 8.2));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 10.1));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 11.1));
    
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 11.7));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 12.1));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 12.5));
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 14.4)); 
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 14.4));
    
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 16.1));
    
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 17.1)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 17.1));
    
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 18));
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 20));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 22.6));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 22.6));
    
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 23.2));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 23.6));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 24));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 24.4));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 24.8));
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 27.2));
    pattern_notes.add(new Note(downArrowLoc, 0, 8, "down", 28.2));
    pattern_notes.add(new Note(upArrowLoc, 0, 9, "up", 30.2));
    pattern_notes.add(new Note(rightArrowLoc, 0, 10, "right", 32.1));
    
    pattern_notes.add(new Note(upArrowLoc, 0, 10, "up", 34.1));
    pattern_notes.add(new Note(leftArrowLoc, 0, 10, "left", 34.1));
    
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 35.1));

    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 36.9));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 37.2));
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 39.5));
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 41.8));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 43));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 45));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 46.7));
    
    
    return pattern_notes;
  }
  
  // add notes to an array of notes (level design)

}
