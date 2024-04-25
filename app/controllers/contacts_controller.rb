class ContactsController < ApplicationController
  def index
    @contact = Contact.new
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to contact_path
      flash[:notice] = "Your messsage has been sent!"
    else
      render :new, status: :unprocessable_entity
      flash[:error] = "Your message has not been sent, please try again..."
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone_number, :brand, :website, :description, :known)
  end
end
