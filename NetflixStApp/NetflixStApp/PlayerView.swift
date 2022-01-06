//
//  Preview.swift
//  MyNetflix
//
//  Created by 박서현 on 2021/08/01.
//

// https://developer.apple.com/documentation/avfoundation/avplayerlayer

import UIKit
import AVFoundation

class PlayerView: UIView {
    var player: AVPlayer? {
        get {
            return playerLayer.player
        }
        set {
            playerLayer.player = newValue
        }
    }
    
    var playerLayer: AVPlayerLayer {
        return layer as! AVPlayerLayer
    }
    
    // Override UIView property
    override static var layerClass: AnyClass {
        return AVPlayerLayer.self
    }
}
