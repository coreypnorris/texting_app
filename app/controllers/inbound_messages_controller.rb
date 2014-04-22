class InboundMessagesController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    Automaton.auto_response(params['From'])
  end

private
  def inbound_params
    params.require(:inbound_params).permit(:to, :from, :body)
  end

end
