

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
    
    pattern_notes.add(new Note(rightArrowLoc, 0, 11, "right", 1.0, true, 8.0));
  
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 0.8)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 0.8)); 
    
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 1.6)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 1.6)); 
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 8, "left", 2.4)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 8, "right", 3.1));
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 4)); 
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 4.2));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 4.5)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 4.7));
    

    
    
    return pattern_notes;
  }
  
  // add notes to an array of notes (level design)

}
