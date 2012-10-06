class Tweet < ActiveRecord::Base
  attr_accessible :message, :user
  
  Twitter.configure do |config|
  config.consumer_key = 'NUo6YWEijUsMfz1OvRaYw' 
  config.consumer_secret = 'kz5gMdHtXriHgenGC8RDAWYIQY77VM7Fftqc1jW4G7s'
  config.oauth_token = '126410610-ZirASeRT2cJ6wZByzwvPVEWMFXijT6nv9AvrDGTo'
  config.oauth_token_secret = '0gw9RukM5Pmx4k9FEZn8ftdtaQcrVxynIKg848Ms'
end

  def read_message 
  	return "sin user" if self.user.blank?
  	Twitter.user_timeline(self.user).first.text
  end
  
end
