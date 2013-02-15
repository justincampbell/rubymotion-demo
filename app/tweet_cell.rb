class TweetCell < UITableViewCell
  HEIGHT = 120

  def self.fromTweet(tweet)
    cell = alloc.initWithStyle(UITableViewCellStyleSubtitle, reuseIdentifier: nil)
    cell.textLabel.text = tweet.text
    cell.detailTextLabel.text = tweet.user
    cell
  end

  def layoutSubviews
    super

    textLabel.numberOfLines = 0
    textLabel.frame = CGRectMake(5,
                                 0,
                                 frame.size.width - 10,
                                 HEIGHT - detailTextLabel.frame.size.height)

    detailTextLabel.frame = CGRectMake(5,
                                       textLabel.frame.size.height,
                                       frame.size.width - 10,
                                       detailTextLabel.frame.size.height)

    detailTextLabel.textAlignment = UITextAlignmentRight
  end
end
