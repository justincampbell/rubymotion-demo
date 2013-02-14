class TweetCell < UITableViewCell
  def self.fromTweet(tweet)
    cell = alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier: nil)
    cell.textLabel.text = tweet.text
    cell
  end
end
