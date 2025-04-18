// this is so we can store the number and name together
import processing.data.*;

class Score {
  String initials;
  int score;
  Score(String initials, int score) {
    this.initials = initials;
    this.score = score;
  }
}

// the main functions for storing leaderboard info and showing it
class LeaderboardManager{
  ArrayList<Score> leaderboard = new ArrayList<Score>();
  final int MAX_ENTRIES = 5;
  String level; // To differentiate levels (e.g., "easy", "medium", "hard")
  
  LeaderboardManager(String level) {
    this.level = level;
  }

  
  // this is for adding a new score to the board in the array
  void addScore(String initials, int score) {
    leaderboard.add(new Score(initials, score));
    leaderboard.sort((a, b) -> b.score - a.score);
    if (leaderboard.size() > MAX_ENTRIES) {
      leaderboard.remove(leaderboard.size() - 1);
    }
    //println("Saving to JSON for level: " + level + " player: " + initials + " score: " + score);    
    saveToJSON(); // Save after updating leaderboard
  }

  // this checks if you can even get to the leaderboard
  boolean qualifies(int score) {
    return leaderboard.size() < MAX_ENTRIES || score > leaderboard.get(leaderboard.size() - 1).score;
  }

  void display(float x, float y) {
    // this is for display logic when the end screen is up
    rectMode(CENTER);
    fill(#D6D6D6, 80);
    rect(x, y, height/2, width/3);
    fill(255);
    textAlign(CENTER);
    textSize(48);
    
    text("Leaderboard:", x, y - height/8);
    
    textSize(32);
    
    for (int i = 0; i < leaderboard.size(); i++) {
      Score s = leaderboard.get(i);
      text((i + 1) + ". " + s.initials + " - " + s.score, x, y - height/16 + i * 64);
    }
  }
  
  void saveToJSON() {
    String filename = "leaderboard_" + level + ".json";
    JSONObject json;
    JSONArray scoresArray;
  
    try {
      // Attempt to load the existing JSON file
      json = loadJSONObject(filename);
      scoresArray = json.getJSONArray("leaderboard");
    } catch (Exception e) {
      // If file doesn't exist or is inaccessible, create a new JSON structure
      json = new JSONObject();
      scoresArray = new JSONArray();
    }
  
    // Clear existing scores and replace them with the current leaderboard
    scoresArray = new JSONArray(); // Start fresh
    for (Score s : leaderboard) {
      JSONObject scoreObj = new JSONObject();
      scoreObj.setString("initials", s.initials);
      scoreObj.setInt("score", s.score);
      scoresArray.append(scoreObj);
    }
  
    // Add the scores array to the JSON object
    json.setJSONArray("leaderboard", scoresArray);
  
    // Save the updated JSON file
    saveJSONObject(json, filename);
    println("Leaderboard for " + level + " saved successfully.");
  }

  void loadFromJSON() {
    String filename = "leaderboard_" + level + ".json";
    JSONObject json;
  
    try {
      // Load existing leaderboard data
      json = loadJSONObject(filename);
      JSONArray scoresArray = json.getJSONArray("leaderboard");
  
      for (int i = 0; i < scoresArray.size(); i++) {
        JSONObject scoreObj = scoresArray.getJSONObject(i);
        String initials = scoreObj.getString("initials");
        int score = scoreObj.getInt("score");
        leaderboard.add(new Score(initials, score));
      }
      println("Leaderboard for " + level + " loaded. Entries: " + leaderboard.size());
    } catch (Exception e) {
      // Handle missing or inaccessible file
      println("No existing leaderboard found for level: " + level);
    }
  }
}
