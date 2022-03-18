//
//  ViewController.swift
//  Application (JSON Parsing)
//
//  Created by XORGeek New on 2022/03/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        parseJSON()
    }
    private func parseJSON() {
        guard let path = Bundle.main.path(forResource: "JSONData", ofType: "json")
        else {
            return
        }
        let url = URL(fileURLWithPath: path)
        
        var output: Output?
        do {
            let jsonData = try Data(contentsOf: url)
            output = try 
        }
        catch {
            print("Error \(error)")
        }
    }
}

struct Output: Codable {
    let data: [OutputItem]
}
struct OutputItem: Codable {
    let title: String
    let items: [String]
}
