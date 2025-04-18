

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
  
  ArrayList<Note> mediumLevel(){
    pattern_notes = new ArrayList<Note>();
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 0.6)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 0.9)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 1.2)); 
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 1.2)); 
    
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 2.0)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 2.3)); 
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 2.6)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 2.6));   

    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 4.1)); 
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 4.1)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 4.3)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 4.3));   
    
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 5.5)); 
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 5.5)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 5.8)); 
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 5.8));
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 7.1)); 
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 7.3)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 7.5)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 7.7));
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 8.0)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 8.6));

    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 9.2)); 

    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 10.8)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 11.0)); 
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 11.2)); 
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 12.8));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 13.0));
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 13.8));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 14.2));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 14.6));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 15.0));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 15.5));
    
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 16.4));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 16.6));
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 17.2));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 17.6));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 18.0));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 18.4));
    
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 18.9));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 19.3));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 19.7));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 20.1));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 20.5));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 20.9));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 21.4));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 21.9));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 22.3));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 22.7));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 23.1));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 23.6));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 24.0));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 24.5));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 24.9));
  
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 25.8));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 26.2));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 26.6));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 27.0));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 27.0));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 27.4));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 27.8));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 28.2));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 28.6));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 28.6));
    
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 29.0));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 29.4));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 29.8));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 30.2));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 30.2));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 30.6));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 31.0));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 31.4));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 31.8));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 31.8));
    
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 32.4));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 32.8));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 33.2));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 33.6));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 34));
    
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 34.5));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 35));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 35.5));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 35.8));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 36));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 36.4));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 36.8));
    
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 37));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 37));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 37.3));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 37.3));
    
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 37.8));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 38.3));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 38.8));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 39.1));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 39.3));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 39.7));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 40.1));
    
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 40.3));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 40.3));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 40.6));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 40.6));
    
    return pattern_notes;
  }
  
  ArrayList<Note> hardLevel(){
    pattern_notes = new ArrayList<Note>();
    
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 0, true, 1.3));
    // held note but kinda glitchy
 
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 1.3)); 
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 1.5)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 1.9)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 2.3)); 
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 2.7)); 
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 3.1)); 
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 3.5)); 
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 3.9)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 4.2)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 4.5)); 
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 4.7)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 4.9)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 5.1)); 
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 5.2)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 5.3)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 5.6)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 5.9)); 
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 6.2)); 

    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 6.6)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 6.8)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 7.0)); 
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 7.2)); 
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 7.4)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 7.6)); 
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 7.8)); 
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 8.0)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 8.2)); 
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 8.4)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 8.6)); 
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 8.8)); 
    
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 9.4)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 9.5)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 9.6)); 
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 10.0)); 
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 10.2)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 10.4)); 
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 10.6)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 10.8)); 
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 11.0)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 11.2)); 
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 11.4)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 11.6)); 
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 11.8)); 

    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 12.2 , true, 3.65));

    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 16.4)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 16.6)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 16.8)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 17.0)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 17.2)); 
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 17.4)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 17.6)); 
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 17.8)); 
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 18.0)); 
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 18.2)); 

    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 18.4)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 18.6)); 
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 18.8)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 19.0));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 19.2));

    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 19.6)); 
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 19.8)); 
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 20.0)); 
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 20.2));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 20.6));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 21.0));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 21.4));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 21.8));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 22.2));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 22.6));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 23.0));

    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 24.4));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 24.6));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 24.8));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 25.0));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 25.2));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 25.4));
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 25.7));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 25.9));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 26.1));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 26.3));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 26.5));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 26.7));
    
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 27.1));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 27.3));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 27.5));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 27.7));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 27.9));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 28.1));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 28.4));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 28.6));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 28.8));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 29.1));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 29.4));

    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 29.8));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 30.0));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 30.2));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 30.4));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 30.6));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 30.8));
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 31.3));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 31.5));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 31.7));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 31.9));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 32.1));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 32.3));
    
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 33.2));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 34.0));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 34.2));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 34.8));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 35.0));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 35.4));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 35.7));

    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 36.3));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 37.1));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 37.3));
    pattern_notes.add(new Note(rightArrowLoc, 0, 7, "right", 37.8));
    pattern_notes.add(new Note(upArrowLoc, 0, 7, "up", 38.0));
    pattern_notes.add(new Note(downArrowLoc, 0, 7, "down", 38.4));
    pattern_notes.add(new Note(leftArrowLoc, 0, 7, "left", 38.6));

    return pattern_notes;
  }
  
  // add notes to an array of notes (level design)

}
