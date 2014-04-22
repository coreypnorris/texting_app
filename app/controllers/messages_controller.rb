class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    nums = params["multi"]
    nums.each do |num|
      @message = Message.new(:from => params["message"]["from"], :body => params["message"]["body"], :to => num.last)
      if @message.save
        current_user.messages << @message
        if params[:save_contact] == '1' && !current_user.contacts.any? {|c| c.phone == params[:message][:to]}
          current_user.contacts.create(:phone => params[:message][:to], :name => params[:name])
        end
      end
    end
    flash[:notice] = "Message(s) Sent!"
    redirect_to root_url
  end

  def show
    @message = Message.find(params[:id])
  end

private
  def message_params
    params.require(:message).permit(:to, :from, :body, :status)
  end
end
