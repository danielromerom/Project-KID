

class Pattern{
  
  ArrayList<Note> pattern_notes;
    int leftArrowLoc = 481+96;
    int rightArrowLoc = 736+96;
    int downArrowLoc = 992+96;
    int upArrowLoc = 1248+96;
    int arrowHeight = 778+96;
  
  Pattern(){
  }
  
  ArrayList<Note> easyLevel(){
    pattern_notes = new ArrayList<Note>();
  
    pattern_notes.add(new Note(leftArrowLoc, 0, 6, "left", 0.9)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 6, "right", 0.9)); 
    
    pattern_notes.add(new Note(rightArrowLoc, 0, 8, "right", 2.2)); 
    pattern_notes.add(new Note(downArrowLoc, 0, 13, "down", 5.0));  
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 8, "left", 6.0)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 8, "right", 6.0)); 
    
    pattern_notes.add(new Note(upArrowLoc, 0, 11, "up", 8.0)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 11, "up", 8.4));
    
    pattern_notes.add(new Note(downArrowLoc, 0, 10, "down", 9.5)); 
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 10, "left", 10.1)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 10, "right", 10.4));
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 11, "left", 12)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 11, "right", 12.2));
    pattern_notes.add(new Note(downArrowLoc, 0, 11, "down", 12.6)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 11, "up", 12.8));
    
    
    return pattern_notes;
  }
  
  // add notes to an array of notes (level design)

}
