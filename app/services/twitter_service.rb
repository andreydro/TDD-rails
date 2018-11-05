class TwirrerService
  def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key = "key_1"
      config.consumer_secret = "key_2"
      config.access_token = "key_3"
      config.access_token_secret = "key_4"
    end
  end

  def tweet(message)
    @client.update(message)
  end
end
