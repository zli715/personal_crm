class OldInteractionsController < ApplicationController
  def index
    @old_interactions = OldInteraction.all

    render("old_interactions/index.html.erb")
  end

  def show
    @old_interaction = OldInteraction.find(params[:id])

    render("old_interactions/show.html.erb")
  end

  def new
    @old_interaction = OldInteraction.new

    render("old_interactions/new.html.erb")
  end

  def create
    @old_interaction = OldInteraction.new

    @old_interaction.connect_id = params[:connect_id]
    @old_interaction.description = params[:description]

    save_status = @old_interaction.save

    if save_status == true
      redirect_to("/old_interactions/#{@old_interaction.id}", :notice => "Old interaction created successfully.")
    else
      render("old_interactions/new.html.erb")
    end
  end

  def edit
    @old_interaction = OldInteraction.find(params[:id])

    render("old_interactions/edit.html.erb")
  end

  def update
    @old_interaction = OldInteraction.find(params[:id])

    @old_interaction.connect_id = params[:connect_id]
    @old_interaction.description = params[:description]

    save_status = @old_interaction.save

    if save_status == true
      redirect_to("/old_interactions/#{@old_interaction.id}", :notice => "Old interaction updated successfully.")
    else
      render("old_interactions/edit.html.erb")
    end
  end

  def destroy
    @old_interaction = OldInteraction.find(params[:id])

    @old_interaction.destroy

    if URI(request.referer).path == "/old_interactions/#{@old_interaction.id}"
      redirect_to("/", :notice => "Old interaction deleted.")
    else
      redirect_to(:back, :notice => "Old interaction deleted.")
    end
  end
end
