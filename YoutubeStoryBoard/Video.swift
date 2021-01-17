//
//  Video.swift
//  YoutubeApp
//
//  Created by Andrew Park on 1/16/21.
//

import Foundation

struct Video: Codable, Identifiable {
    var id = UUID()
    var videoId = ""
    var title = ""
    var description = ""
    var thumbnail = ""
    var published = ""

}
