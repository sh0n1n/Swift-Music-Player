import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
            super.viewDidLoad()
        }
     // player appears once
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            playAudio()
        }
        // Function to play audio files
        private func playAudio(){
            // path of audiofile that was added to the project
            guard let path=Bundle.main.path(forResource: "test", ofType: "mp3") else {
                debugPrint("test.mp3 not found")
                return
            }
            // Play audio
            let player = AVPlayer(url: URL(fileURLWithPath: path))
            let playerController = AVPlayerViewController()
            playerController.player=player
            present(playerController, animated: true) {
                player.play()
            }
        }
}

