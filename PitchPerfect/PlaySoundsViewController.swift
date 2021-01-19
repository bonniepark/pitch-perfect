//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by Bonnie Park on 2021-01-17.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    // MARK: Outlets
    
    @IBOutlet weak var snailButton: UIButton!
    @IBOutlet weak var rabbitButton: UIButton!
    @IBOutlet weak var chipmunkButton: UIButton!
    @IBOutlet weak var vaderButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var reverbButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    var recordedAudioURL: URL!
    var audioFile: AVAudioFile!
    var audioEngine: AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!

    enum ButtonType: Int {
        case slow = 0, fast, chipmunk, vader, echo, reverb
    }
    
    // MARK: Actions
    
    @IBAction func playSoundForButton(_ sender: UIButton) {
        print("play sounds button pressed")
    }
    
    @IBAction func stopButtonPressed(_ sender: Any) {
        print("stop audio button pressed")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupAudio()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        configureUI(.notPlaying)
    }

}

