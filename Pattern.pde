

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
  
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 1)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 1)); 
    
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 1.8)); 
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 3.5));  
    
    pattern_notes.add(new Note(downArrowLoc, 0, 8, "down", 4.7)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 8, "up", 4.7)); 
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 5.4)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 5.4)); 
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 5.7)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 5.7)); 
    
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 7.2)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 7.6));
    
    pattern_notes.add(new Note(downArrowLoc, 0, 8, "down", 9.2)); 
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 8, "left", 9.5)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 8, "right", 10.5));
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 8, "left", 11.5)); 
    pattern_notes.add(new Note(downArrowLoc, 0, 8, "down", 11.7));
    pattern_notes.add(new Note(upArrowLoc, 0, 8, "up", 12.0)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 8, "right", 12.2));
    
    
    return pattern_notes;
  }
  
  // add notes to an array of notes (level design)

}
