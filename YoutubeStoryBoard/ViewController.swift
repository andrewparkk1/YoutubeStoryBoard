//
//  ViewController.swift
//  YoutubeStoryBoard
//
//  Created by Andrew Park on 1/16/21.
//

import UIKit

class ViewController: UIViewController {
    var model = Model()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
        //git
        
    }


}

