class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new message_params

    if @message.valid?
      MessageMailer.contact_us(@message).deliver_now
      # redirect_to new_message_url, notice: "Message received, thanks!"
      redirect_to(root_path, notice: "Message has been sent, thanks!")
    else
      redirect_back(fallback_location: root_path, warning: "Your message could not be sent.")
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :body)
  end

end
