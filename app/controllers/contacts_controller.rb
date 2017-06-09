class ContactsController < ApplicationController
  def index
    @contacts = Contact.all

    render("contacts/index.html.erb")
  end

  def show
    @contact = Contact.find(params[:id])
    @our_connection = @contact.connections.find_by(user_id: current_user).id
    render("contacts/show.html.erb")
  end

  def new
    @contact = Contact.new

    render("contacts/new.html.erb")
  end

  def create
    @contact = Contact.new

    @contact.first_name = params[:first_name]
    @contact.last_name = params[:last_name]
    @contact.current_job = params[:current_job]
    @contact.birthday = params[:birthday]
    @contact.email = params[:email]
    @contact.phone = params[:phone]

    save_status = @contact.save

    if save_status == true
      redirect_to("/connections/new", :notice => "Contact created successfully.")
    else
      render("contacts/new.html.erb")
    end
  end

  def edit
    @contact = Contact.find(params[:id])

    render("contacts/edit.html.erb")
  end

  def update
    @contact = Contact.find(params[:id])

    @contact.first_name = params[:first_name]
    @contact.last_name = params[:last_name]
    @contact.current_job = params[:current_job]
    @contact.birthday = params[:birthday]
    @contact.email = params[:email]
    @contact.phone = params[:phone]

    save_status = @contact.save

    if save_status == true
      redirect_to("/contacts/#{@contact.id}", :notice => "Contact updated successfully.")
    else
      render("contacts/edit.html.erb")
    end
  end

  def destroy
    @contact = Contact.find(params[:id])

    @contact.destroy

    if URI(request.referer).path == "/contacts/#{@contact.id}"
      redirect_to("/", :notice => "Contact deleted.")
    else
      redirect_to(:back, :notice => "Contact deleted.")
    end
  end
end
