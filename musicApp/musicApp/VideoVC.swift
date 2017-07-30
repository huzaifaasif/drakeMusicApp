//
//  VideoVC.swift
//  musicApp
//
//  Created by Huzaifa Asif on 2017-07-28.
//  Copyright © 2017 Huzaifa Asif. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var videoLabel: UILabel!
    @IBOutlet weak var webView: UIWebView!
    
    private var _musicList:AppModel!
    
    var musicList:AppModel{
        get{
            return _musicList
        }
        set{
            _musicList = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videoLabel.text = musicList.videoTitle
        webView.loadHTMLString(musicList.videoURL, baseURL: nil)

        // Do any additional setup after loading the view.
    }

    @IBAction func goBackToFirstSegue(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
  
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
