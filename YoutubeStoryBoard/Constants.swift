//
//  Constant.swift
//  YoutubeApp
//
//  Created by Andrew Park on 1/16/21.
//

import Foundation

struct Constants {
    static var API_KEY = "AIzaSyBCikK7B9y2DsYfV4mqpZ-lIITAoPzahps"
    static var PLAYLIST_ID = "PLpGHT1n4-mAtTj9oywMWoBx0dCGd51_yG"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"

}
