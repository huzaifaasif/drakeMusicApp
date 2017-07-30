//
//  ViewController.swift
//  musicApp
//
//  Created by Huzaifa Asif on 2017-07-28.
//  Copyright © 2017 Huzaifa Asif. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    //var musicList = [AppModel]()
    
    @IBOutlet weak var tableView: UITableView!
    var musicList = [AppModel]()    //an array that stores AppModel objects
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstCell = AppModel(imageURL:  "http://static.spin.com/files/2016/09/pleaseforgiveme-1474897111-640x427.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/0WM68QdqxQw\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Four days")
        
        let secondCell = AppModel(imageURL: "http://z1035.com/wp-content/uploads/2017/02/HOTLINE.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/uxpDa-c-4Mc\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Hotline Bling")
        
        let thirdCell = AppModel(imageURL: "https://i.ytimg.com/vi/i14nkP5O9pc/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nNs4WkSm5dE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "One Dance")
        
        let fourthCell = AppModel(imageURL: "https://i.ytimg.com/vi/8gdGIy7cYSI/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/q2e7vZuyRcg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Controlla")
        
        musicList.append(firstCell)
        musicList.append(secondCell)
        musicList.append(thirdCell)
        musicList.append(fourthCell)    
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    //Required delegate methods
    
    //1.0 Returns a cell at a particular index
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)-> UITableViewCell{
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "musicCell", for: indexPath) as? musicCell{
            let music_cell = musicList[indexPath.row] //music_cell stores an object at a specific index
            
            cell.updateUI(appModel: music_cell) //filling a cell with videoTitle, image
            
            return cell
        }
        
        
        return UITableViewCell()
    }
   
    
    //1.1 Returns the number of rows in a given section of a table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musicList.count
    }
    
    //1.2 goes to the 2nd VC upon tapping on any cell
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let music_cell = musicList[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: music_cell)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC{
            
            if let musicCell = sender as? AppModel{     //is music_cell a type of AppModel? musicCell = music_cell
                destination.musicList = musicCell   //setting musicList in VideoVC
            }
        }
    }
    
    
  


}

