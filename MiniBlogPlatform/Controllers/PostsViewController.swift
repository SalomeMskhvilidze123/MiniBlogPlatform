//
//  ViewController.swift
//  MiniBlogPlatform
//
//  Created by Mcbook Pro on 08.06.25.
//

import UIKit

class PostsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "API Spike"
        view.backgroundColor = .systemBackground

        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1") else {
            print("❌ შეცდომა: არასწორი URL")
            return
        }

        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(" შეცდომა მონაცემების წამოღებისას: \(error.localizedDescription)")
                return
            }

            guard let data = data else {
                print(" შეცდომა: მონაცემები არ არის")
                return
            }

            do {
                if let jsonObject = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                    DispatchQueue.main.async {
                        print(" --- მიღებული JSON მონაცემები --- ")
                        print(jsonObject)
                        print("-----------------------------")
                    }
                }
            } catch {
                print(" შეცდომა JSON-ის დამუშავებისას: \(error.localizedDescription)")
            }
        }
        
        task.resume()
    }

}

