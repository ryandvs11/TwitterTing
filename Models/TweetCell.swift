//
//  TweetCell.swift
//  twitter_alamofire_demo
//
//  Created by Ryan Davis on 10/7/18.
//  Copyright © 2018 Charles Hieger. All rights reserved.
//

import UIKit

class TweetCell: UITableViewCell {

    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var userHandle: UILabel!
    @IBOutlet weak var dateCreated: UILabel!
    @IBOutlet weak var tweetText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    var tweet: Tweet! {
        didSet {
            profilePic.af_setImage(withURL: tweet.user.avatarImg!)
            username.text = tweet.user.name
            userHandle.text = "@\(tweet.user.screenName)"
            dateCreated.text = tweet.createdAtString
            tweetText.text = tweet.text
            self.retweetCount.text = "\(tweet.retweetCount)"
            if tweet.favoriteCount != nil {
                self.favoriteCount.text = "\(tweet.favoriteCount!)"
            }
            if tweet.favorited! {
                favBtn.setImage(#imageLiteral(resourceName: "favor-icon-red"), for: .normal)
            }
            
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
