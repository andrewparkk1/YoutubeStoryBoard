//
//  Video.swift
//  YoutubeApp
//
//  Created by Andrew Park on 1/16/21.
//

//codable protacol: contains decodable and encoable protacols


import Foundation

struct Video: Decodable  {
    //var id = UUID()
    var videoId = ""
    var title = ""
    var description = ""
    var thumbnail = ""
    var published = Date()
    
    // specifiying keys that we need
    enum CodingKeys: String, CodingKey {
        
        // container titles
        case snippet
        case thumbnails
        case high
        case resourceId
        
       // specific key
        case videoId
        case title
        case description
        case thumbnail = "url"
        case published = "publishedAt"

        
    }
    
    init (from decoder: Decoder) throws {
       
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let snippetContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .snippet)
        self.title = try snippetContainer.decode(String.self, forKey: .title)
        self.description = try snippetContainer.decode(String.self, forKey: .description)
        self.published = try snippetContainer.decode(Date.self, forKey: .published)
        
        let thumbnailContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnails)
        let highThumbnailContainer = try thumbnailContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .high)
        self.thumbnail = try highThumbnailContainer.decode(String.self, forKey: .thumbnail)
        
        let resourceContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .resourceId)
        self.videoId = try resourceContainer.decode(String.self, forKey: .videoId)
        
    }

}
