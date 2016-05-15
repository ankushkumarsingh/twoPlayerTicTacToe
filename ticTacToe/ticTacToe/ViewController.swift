//
//  ViewController.swift
//  ticTacToe
//
//  Created by citiadmin on 5/14/16.
//  Copyright © 2016 ankush. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func gameReset(sender: UIButton) {
        resetBoard()
    }

    @IBOutlet weak var gameStatus: UILabel!
    
    @IBOutlet weak var board: UIImageView!
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var s1: UIImageView!
    
    @IBOutlet weak var s2: UIImageView!
    
    @IBOutlet weak var s3: UIImageView!
    
    @IBOutlet weak var s4: UIImageView!
    
    @IBOutlet weak var s5: UIImageView!
    
    @IBOutlet weak var s6: UIImageView!
    
    @IBOutlet weak var s7: UIImageView!
    
    @IBOutlet weak var s8: UIImageView!
    
    @IBOutlet weak var s9: UIImageView!
    
    var oImg = UIImage()
    var xImg = UIImage()
    var playerToken = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        oImg = UIImage(imageLiteral: "Circle.jpeg")
        xImg = UIImage(imageLiteral: "X.png")
        playerToken = 1
        gameStatus.text = "X goes first"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updatePlayerInfo() {
        
        if (checkForWin()) {
            var playerWon = ""
            if playerToken == 1 {
                playerWon = "X Wins"
            } else if playerToken == 2 {
                playerWon = "O Wins"
            }
            let alert = UIAlertController(title: "There's a winner!", message:playerWon, preferredStyle: .Alert)
            let action = UIAlertAction(title: "OK", style: .Default) { _ in
                
            }
            alert.addAction(action)
            self.presentViewController(alert, animated: true){}
            resetBoard()
            return
        }
        
        if(playerToken == 1) {
            playerToken = 2
            gameStatus.text = "It is O turn"
            print("playerToken = \(playerToken)")
        }
        else if(playerToken == 2) {
            playerToken = 1;
            gameStatus.text = "It is X turn"
            print("playerToken = \(playerToken)")
        }
        
    }

    func resetBoard() {
        /// clear the images stored in the UIIMageView
        s1.image = nil
        s2.image = nil
        s3.image = nil
        s4.image = nil
        s5.image = nil
        s6.image = nil
        s7.image = nil
        s8.image = nil
        s9.image = nil
        
        // reset the player and update the label text
        playerToken = 1
        gameStatus.text = "X goes first"
    }
    func checkForWin() -> Bool {
        // HORIZONTAL WINS
        if((s1.image == s2.image) && (s2.image ==
            s3.image) && (s1.image != nil))
        {
            return true
        }
        if((s4.image == s5.image) && (s5.image ==
            s6.image) && (s4.image != nil))
        {
            return true
        }
        if((s7.image == s8.image) && (s8.image ==
            s9.image) && (s7.image != nil))
        {
            return true
        }
        // VERTICAL WINS
        if((s1.image == s4.image) && (s4.image ==
            s7.image) && (s1.image != nil))
        {
            return true
        }
        if((s2.image == s5.image) && (s5.image ==
            s8.image) && (s2.image != nil))
        {
            return true
        }
        if((s3.image == s6.image) && (s6.image ==
            s9.image) && (s3.image != nil))
        {
            return true
        }
        // DIAGONAL WINS
        if((s1.image == s5.image) && (s5.image ==
            s9.image) && (s1.image != nil))
        {
            return true
        }
        if((s3.image == s5.image) && (s5.image ==
            s7.image) && (s3.image != nil))
        {
            return true
        }
        return false
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        guard let touch : UITouch = touches.first else {
            return
        }
        
        if(CGRectContainsPoint(s1.frame, touch.locationInView(self.view)))
        {
            if(playerToken==1){ s1.image = xImg}
            if(playerToken==2){ s1.image = oImg}
        }
        if(CGRectContainsPoint(s2.frame, touch.locationInView(self.view)))
        {
            if(playerToken==1){ s2.image = xImg}
            if(playerToken==2){ s2.image = oImg}
        }
        if(CGRectContainsPoint(s3.frame, touch.locationInView(self.view)))
        {
            if(playerToken==1){ s3.image = xImg}
            if(playerToken==2){ s3.image = oImg}
        }
        if(CGRectContainsPoint(s4.frame, touch.locationInView(self.view)))
        {
            if(playerToken==1){ s4.image = xImg}
            if(playerToken==2){ s4.image = oImg}
        }
        if(CGRectContainsPoint(s5.frame, touch.locationInView(self.view)))
        {
            if(playerToken==1){ s5.image = xImg}
            if(playerToken==2){ s5.image = oImg}
        }
        if(CGRectContainsPoint(s6.frame, touch.locationInView(self.view)))
        {
            if(playerToken==1){ s6.image = xImg}
            if(playerToken==2){ s6.image = oImg}
        }
        if(CGRectContainsPoint(s7.frame, touch.locationInView(self.view)))
        {
            if(playerToken==1){ s7.image = xImg}
            if(playerToken==2){ s7.image = oImg}
        }
        if(CGRectContainsPoint(s8.frame, touch.locationInView(self.view)))
        {
            if(playerToken==1){ s8.image = xImg}
            if(playerToken==2){ s8.image = oImg}
        }
        if(CGRectContainsPoint(s9.frame, touch.locationInView(self.view)))
        {
            if(playerToken==1){ s9.image = xImg}
            if(playerToken==2){ s9.image = oImg}
        }
        
        updatePlayerInfo()
        
    }


}

