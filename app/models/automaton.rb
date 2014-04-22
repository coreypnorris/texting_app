class Automaton

  def self.auto_response(number)
    @message = Message.new(:from => '7754730713', :to => number, :body => 'Sorry, this is a Twilio account phone number and cannot receive text messages!')
    @message.save
  end

end
