//
//  User.swift
//  twitter_alamofire_demo
//
//  Created by Ryan Davis on 10/6/18.
//  Copyright © 2018 Charles Hieger. All rights reserved.
//

import Foundation

class User {
    
    // TODO: Add properties
    // MARK: Properties
    var name: String? //display name
    var screenName: String?
    var followers: Int
    var avatarImage: String
    var avatarImg: URL?
    var following: Int
    var tweetCount: Int
    var headingURl: String
    var headingImg: URL?
    
    static var current: User?
    // Add any additional properties here
    init(dictionary: [String: Any]) {
        name = dictionary["name"] as? String
        screenName = dictionary["screen_name"] as? String
        followers = dictionary["followers_count"] as! Int
        avatarImage = dictionary["profile_image_url_https"] as! String
        avatarImage = avatarImage.replacingOccurrences(of: "_normal", with: "_bigger")
        avatarImg = URL(string: avatarImage)!
        following = dictionary["friends_count"] as! Int
        tweetCount = dictionary["statuses_count"] as! Int
        headingURl = dictionary["profile_banner_url"] as! String
        headingImg = URL(string: headingURl)!
        // Initialize any other properties
    }
    // TODO: Create initializer
    
}
