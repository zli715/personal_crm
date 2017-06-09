class LatestInteractionsController < ApplicationController
  def index
    @latest_interactions = LatestInteraction.all

    render("latest_interactions/index.html.erb")
  end

  def show
    @latest_interaction = LatestInteraction.find(params[:id])

    render("latest_interactions/show.html.erb")
  end

  def new
    @latest_interaction = LatestInteraction.new

    render("latest_interactions/new.html.erb")
  end

  def create
    @latest_interaction = LatestInteraction.new

    @latest_interaction.date = params[:date]
    @latest_interaction.interaction = params[:interaction]
    @latest_interaction.connect_id = params[:connect_id]

    save_status = @latest_interaction.save

    if save_status == true
      redirect_to("/latest_interactions/#{@latest_interaction.id}", :notice => "Latest interaction created successfully.")
    else
      render("latest_interactions/new.html.erb")
    end
  end

  def edit
    @latest_interaction = LatestInteraction.find(params[:id])

    render("latest_interactions/edit.html.erb")
  end

  def update
    @latest_interaction = LatestInteraction.find(params[:id])

    @latest_interaction.date = params[:date]
    @latest_interaction.interaction = params[:interaction]
    @latest_interaction.connect_id = params[:connect_id]

    save_status = @latest_interaction.save

    if save_status == true
      redirect_to("/latest_interactions/#{@latest_interaction.id}", :notice => "Latest interaction updated successfully.")
    else
      render("latest_interactions/edit.html.erb")
    end
  end

  def destroy
    @latest_interaction = LatestInteraction.find(params[:id])

    @latest_interaction.destroy

    if URI(request.referer).path == "/latest_interactions/#{@latest_interaction.id}"
      redirect_to("/", :notice => "Latest interaction deleted.")
    else
      redirect_to(:back, :notice => "Latest interaction deleted.")
    end
  end
end
