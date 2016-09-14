//
//  Photo.swift
//  TableViews
//
//  Created by yanze on 9/13/16.
//  Copyright © 2016 yanzeliu. All rights reserved.
//

import Foundation

class Photo {
    var name: String = ""
    var photoProfileImageName: String = ""
    var caption: String = ""
    var thumbnailImageName: String = ""
    
    init(name: String, photoProfileImageName: String,caption:String, thumbnailImageName: String) {
        self.name = name
        self.photoProfileImageName = photoProfileImageName
        self.caption = caption
        self.thumbnailImageName = thumbnailImageName
    }
    
    
    class func downloadPhotos() -> [Photo] {
        var photos = [Photo]()
        for i in 1...10 {
            let photo = Photo(name: "\(i)",
                              photoProfileImageName: "p\(i)" ,
                              caption: "Lorem ipsum dolor sit amet, feugiat est lorem integer, cum cum sollicitudin ut. Ullamcorper pharetra ultricies. Mauris reiciendis.",
                              thumbnailImageName: "t\(i)")
            photos.append(photo)
        }
        return photos
    }
}
