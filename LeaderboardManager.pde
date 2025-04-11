// this is so we can store the number and name together
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
  // this is for adding a new score to the board in the array
  void addScore(String initials, int score) {
    leaderboard.add(new Score(initials, score));
    leaderboard.sort((a, b) -> b.score - a.score);
    if (leaderboard.size() > MAX_ENTRIES) {
      leaderboard.remove(leaderboard.size() - 1);
    }
  }

  // this checks if you can even get to the leaderboard
  boolean qualifies(int score) {
    return leaderboard.size() < MAX_ENTRIES || score > leaderboard.get(leaderboard.size() - 1).score;
  }

  void display(float x, float y) {
    // this is for display logic when the end screen is up
  }

}
