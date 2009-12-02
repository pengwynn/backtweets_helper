module BacktweetsHelper
  def backtweets_count(options={})
    javascript_opts = ""
    options.each do |key, value|
      javascript_opts += "tweetcount_#{key.to_s.gsub('tweetcount_', '')} = #{value.to_json};\n"
    end
    out = capture { javascript_tag(javascript_opts) }
    out << capture { javascript_include_tag "http://widgets.backtype.com/tweetcount.js"}
  end
  
  def backtweets_comments(username)
    "<script src='http://widgets.backtype.com/#{username}' type='text/javascript'></script>"
  end
  
  def backtweets_blogroll(username)
    "<script src='http://widgets.backtype.com/#{username}/blogs' type='text/javascript'></script>"
  end
  
  def backtweets_search(q)
    "<script src='http://widgets.backtype.com/comments?q=#{q}' type='text/javascript'></script>"
  end
end
