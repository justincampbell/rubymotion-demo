class TweetsController < UITableViewController
  API_URL = "http://search.twitter.com/search.json?q=rubymotion"

  def viewDidLoad
    @tweets = [
      Tweet.new("Please wait...", "We're talking to Twitter")
    ]

    AFMotion::JSON.get API_URL do |response|
      @tweets = response.object['results'].map { |tweet|
        Tweet.new(tweet['text'], "@#{tweet['from_user']}")
      }

      view.reloadData
    end
  end

  def tableView(tableView, numberOfRowsInSection: section)
    @tweets.size
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    TweetCell.fromTweet(@tweets[indexPath.row])
  end

  def tableView(tableView, didSelectRowAtIndexPath: indexPath)
    tweet = @tweets[indexPath.row]

    alert = UIAlertView.alloc.initWithTitle tweet.user,
      message: tweet.text,
      delegate: nil,
      cancelButtonTitle: "Close",
      otherButtonTitles: nil

    alert.show
  end
end
