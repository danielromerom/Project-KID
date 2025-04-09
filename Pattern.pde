

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
  
    pattern_notes.add(new Note(leftArrowLoc, 0, 6.3, "left", 1)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 6.3, "right", 1)); 
    
    pattern_notes.add(new Note(rightArrowLoc, 0, 8, "right", 2.3)); 
    pattern_notes.add(new Note(downArrowLoc, 0, 13, "down", 4));  
    
    pattern_notes.add(new Note(downArrowLoc, 0, 8, "down", 4.2)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 8, "up", 4.2)); 
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 8, "left", 5)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 8, "right", 5)); 
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 8, "left", 5.75)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 8, "right", 5.75)); 
    
    pattern_notes.add(new Note(upArrowLoc, 0, 11, "up", 8.0)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 11, "up", 8.4));
    
    pattern_notes.add(new Note(downArrowLoc, 0, 10, "down", 9.5)); 
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 10.5, "left", 10.1)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 10.5, "right", 10.8));
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 11, "left", 12)); 
    pattern_notes.add(new Note(downArrowLoc, 0, 11, "down", 12.2));
    pattern_notes.add(new Note(upArrowLoc, 0, 11, "up", 12.6)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 11, "right", 12.8));
    
    
    return pattern_notes;
  }
  
  // add notes to an array of notes (level design)

}
