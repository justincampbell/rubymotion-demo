class TweetsController < UITableViewController
  def viewDidLoad
    @tweets = %w[One Two Three].map { |text|
      Tweet.new(text, "@nobody")
    }
  end

  def tableView(tableView, numberOfRowsInSection: section)
    @tweets.size
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    TweetCell.fromTweet(@tweets[indexPath.row])
  end
end
