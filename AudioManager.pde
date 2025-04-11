import processing.sound.*; // Import the Sound library

class AudioManager {
  SoundFile song;
  float songDuration;
  
  // Constructor to initialize the AudioManager
  AudioManager(PApplet parent, String filePath) {
    song = new SoundFile(parent, filePath);
    songDuration = song.duration(); // Get the duration of the sound file
  }
  
  // Getter method for the duration
  float getDuration() {
    return songDuration;
  }
  
  // Method to play the sound
  void play() {
    song.play();
  }
  
  void stop() {
    song.stop(); 
  }
}
