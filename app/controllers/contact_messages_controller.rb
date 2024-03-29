class ContactMessagesController < ApplicationController
    def new
      @contact_message = ContactMessage.new
    end
  
    def create
      @contact_message = ContactMessage.new(contact_message_params)
      if @contact_message.save
        redirect_to contact_path, notice: "Thank you for your message, we will contact you soon."
      else
        render :new
      end
    end
  
    private
  
    def contact_message_params
      params.require(:contact_message).permit(:name, :email, :message)
    end
  end
  