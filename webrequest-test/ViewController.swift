//
//  ViewController.swift
//  webrequest-test
//
//  Created by Vyacheslav Horbach on 26/03/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "http://swapi.co/api/people/1"
        let session = NSURLSession.sharedSession()
        let url = NSURL(string: urlString)!
        
        session.dataTaskWithURL(url) { (data: NSData?, response: NSURLResponse?, error: NSError?) in
            
            if let responseData = data {
                
                do {
                    let json = try NSJSONSerialization.JSONObjectWithData(responseData, options: NSJSONReadingOptions.AllowFragments)
                    
                    if let dict = json as? Dictionary<String, AnyObject> {
                        
                        if let name = dict["name"] as? String, let height = dict["height"] as? String, let birth = dict["birth_year"] as? String, let hair = dict["hair_color"] as? String, let gender = dict["gender"] as? String {
                            
                            let luke = Person(name: name, height: height, birthYear: birth, hairColor: hair, gender: gender)
                            
                            print(luke.name)
                            print(luke.height)
                            print(luke.birthYear)
                            print(luke.hairColor)
                            print(luke.gender)
                            
                            if let films = dict["films"] as? [String] {
                                for film in films {
                                    print(film)
                                }
                            }
                            
                        } else {
                            print("there is no luke")
                        }
                        
                    }
                    
                    // print(json)
                } catch {
                    print("Could not serialize")
                }
            }
        }.resume()
    }
}

