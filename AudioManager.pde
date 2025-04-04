import processing.sound.*; // Import the Sound library

class AudioManager {
  SoundFile easySong;
  float songDuration;
  
  // Constructor to initialize the AudioManager
  AudioManager(PApplet parent, String filePath) {
    easySong = new SoundFile(parent, filePath);
    songDuration = easySong.duration(); // Get the duration of the sound file
  }
  
  // Getter method for the duration
  float getDuration() {
    return songDuration;
  }
  
  // Method to play the sound
  void play() {
    easySong.play();
  }
}
