

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
  
    pattern_notes.add(new Note(leftArrowLoc, 0, 5, "left", 1.0)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 5, "right", 1.0)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 10, "right", 3.0)); 
    pattern_notes.add(new Note(downArrowLoc, 0, 15, "down", 6.0));  
    
    return pattern_notes;
  }
  
  // add notes to an array of notes (level design)

}
