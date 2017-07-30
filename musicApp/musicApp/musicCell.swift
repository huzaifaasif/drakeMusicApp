//
//  musicCell.swift
//  musicApp
//
//  Created by Huzaifa Asif on 2017-07-28.
//  Copyright © 2017 Huzaifa Asif. All rights reserved.
//

import UIKit

class musicCell: UITableViewCell {

    @IBOutlet weak var videoImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateUI(appModel: AppModel){
        
        //setting the video title
        videoTitle.text = appModel.videoTitle
        
        //setting the image
        let url = URL(string: appModel.imageURL)!
        
        DispatchQueue.global().async { //async. thread -- running in background to not make UI laggy
            do{
                let data = try Data(contentsOf: url)
                
                DispatchQueue.main.async {     //make UI changes
                    self.videoImage.image = UIImage(data: data)
                }
            }
            catch{
                //handling error
            }
        }
    }
    
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
