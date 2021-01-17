//
//  Model.swift
//  YoutubeApp
//
//  Created by Andrew Park on 1/16/21.
//

import Foundation
 
class Model {
    
    func getVideos() {
        //completion: @escaping ([Video]) -> ()
        
        // Create URL object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            return
        }
        
        // Get URL Session object
        let session = URLSession.shared
        
        // Get a data task from the URL Session object
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            if error != nil || data == nil {
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                dump(response)
            }
            catch {
                
            }
            
           
            
            
//            else {
//                let videos = try! JSONDecoder().decode([Video].self, from: data!)
//
//                // load ui while loading api
//                DispatchQueue.main.async {
//                    completion(videos)
//                }
// ..
            //
        }
        
        // Kick off task
        dataTask.resume()
    }
}
