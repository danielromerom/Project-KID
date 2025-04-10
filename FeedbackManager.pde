class FeedbackManager {
    ArrayList<PImage> feedbackImages;
    ArrayList<Float> feedbackTimers;
    final float FEEDBACK_DURATION = 500; // Feedback image duration in milliseconds

    FeedbackManager() {
        feedbackImages = new ArrayList<PImage>();
        feedbackTimers = new ArrayList<Float>();
    }

    void addFeedback(PImage feedbackImage, float timestamp) {
      if (feedbackImages.size() > 1) { // Maximum 4 feedback items at a time
        feedbackImages.remove(0);
        feedbackTimers.remove(0);
      }
      
      feedbackImages.add(feedbackImage);
      feedbackTimers.add(timestamp); // Use the provided timestamp
    }

    void displayFeedback() {
        imageMode(CENTER);
        for (int i = feedbackImages.size() - 1; i >= 0; i--) {
            if (millis() - feedbackTimers.get(i) < FEEDBACK_DURATION) {
                image(feedbackImages.get(i), width / 2, 3 * height / 10, width / 3, height / 3); // Position of feedback
            } else {
                feedbackImages.remove(i);
                feedbackTimers.remove(i);
            }
        }
    }
}
