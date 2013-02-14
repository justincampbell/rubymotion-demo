class TweetCell < UITableViewCell
  def self.fromTweet(tweet)
    cell = alloc.initWithStyle(UITableViewCellStyleSubtitle, reuseIdentifier: nil)
    cell.textLabel.text = tweet.text
    cell.detailTextLabel.text = tweet.user
    cell
  end
end
