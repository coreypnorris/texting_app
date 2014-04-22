require 'spec_helper'

describe Automaton, :vcr => true do
  describe "inbound text message" do
    it "responds to an incoming text" do
      begin
      response = RestClient.post("https://fxsxyprqtf.localtunnel.me/inbound_messages",
           :payload => { :To => '7754730713',
                         :From => '5037349535',
                         :Body => 'Hey buddy, why you not respond?' }
         ).execute
      rescue
        binding.pry
        false
      end
    end
  end
end
