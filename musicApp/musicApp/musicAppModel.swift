//
//  musicAppModel.swift
//  musicApp
//
//  Created by Huzaifa Asif on 2017-07-28.
//  Copyright © 2017 Huzaifa Asif. All rights reserved.
//

import Foundation

class AppModel{
    private var _imageURL:String!
    private var _videoURL:String!
    private var _videoTitle:String!


    init(imageURL:String, videoURL:String, videoTitle:String){
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
    
    var imageURL:String{
        return _imageURL
    }
    
    var videoURL:String{
        return _videoURL
    }
    
    var videoTitle:String{
        return _videoTitle
    }

}

