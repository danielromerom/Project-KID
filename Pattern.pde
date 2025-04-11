

class Pattern{
  
  ArrayList<Note> pattern_notes;
    int leftArrowLoc = 481+96;
    int rightArrowLoc = 1248+96;
    int downArrowLoc = 736+96;
    int upArrowLoc = 992+96;
    int arrowHeight = 778+96;
  
  Pattern(){
  }
  
  ArrayList<Note> easyLevel(){
    pattern_notes = new ArrayList<Note>();
    
     //pattern_notes.add(new Note(rightArrowLoc, 0, 11, "right", 1.0, true, 8.0));
    // held note but kinda glitchy
  
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 0.8)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 0.8)); 
    
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 1.4)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 1.4)); 
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 8, "left", 2.2)); 
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 3.4)); 
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 3.6));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 4.0)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 4.3));
    
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 6)); 
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 8.1));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 10));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 11));
    
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 11.6));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 12.0));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 12.4));
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 14.2)); 
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 14.2));
    
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 16));
    
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 17)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 17));
    
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 17.9));
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 19.9));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 22.5));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 22.5));
    
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 23));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 23.4));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 23.8));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 24.2));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 24.6));
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 27));
    pattern_notes.add(new Note(downArrowLoc, 0, 8, "down", 28));
    pattern_notes.add(new Note(upArrowLoc, 0, 9, "up", 30));
    pattern_notes.add(new Note(rightArrowLoc, 0, 10, "right", 32));
    
    pattern_notes.add(new Note(upArrowLoc, 0, 10, "up", 34));
    pattern_notes.add(new Note(leftArrowLoc, 0, 10, "left", 34));
    

    
    
    return pattern_notes;
  }
  
  // add notes to an array of notes (level design)

}
