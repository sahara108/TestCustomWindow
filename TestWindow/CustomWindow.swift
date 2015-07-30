//
//  CustomWindow.swift
//  TestWindow
//
//  Created by Nguyen Tuan on 7/30/15.
//  Copyright (c) 2015 pk.atc. All rights reserved.
//

import UIKit

class CustomWindow: UIWindow {
    
    var miniPlayer: UIView?
    
    override func awakeFromNib() {
        self.addMiniPlayer()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addMiniPlayer()
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addMiniPlayer() {
        let miniPlayer = UIView(frame: CGRectMake(100, 10, 50, 50))
        miniPlayer.backgroundColor = UIColor.redColor()
        self.addSubview(miniPlayer)
        
        self.miniPlayer = miniPlayer
    }
        
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if miniPlayer != nil {
            self.bringSubviewToFront(miniPlayer!)
        }
    }
    
    func showOrHidePopupWindow() {
        if let miniPlayer = self.miniPlayer {
            miniPlayer.hidden = !miniPlayer.hidden
        }
    }
}
