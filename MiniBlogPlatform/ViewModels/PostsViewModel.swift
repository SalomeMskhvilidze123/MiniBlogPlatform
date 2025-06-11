//
//  PostViewModel.swift
//  MiniBlogPlatform
//
//  Created by Mcbook Pro on 10.06.25.
//

import Foundation

class PostViewModel {
    let apiService = APIClient()
    
    
    func loadPostsFromServer(){
        apiService.fetchPosts { result in
            print(result)
        }
    }
}


