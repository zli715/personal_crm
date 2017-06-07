class OldJobsController < ApplicationController
  def index
    @old_jobs = OldJob.all

    render("old_jobs/index.html.erb")
  end

  def show
    @old_job = OldJob.find(params[:id])

    render("old_jobs/show.html.erb")
  end

  def new
    @old_job = OldJob.new

    render("old_jobs/new.html.erb")
  end

  def create
    @old_job = OldJob.new

    @old_job.user_id = params[:user_id]

    save_status = @old_job.save

    if save_status == true
      redirect_to("/old_jobs/#{@old_job.id}", :notice => "Old job created successfully.")
    else
      render("old_jobs/new.html.erb")
    end
  end

  def edit
    @old_job = OldJob.find(params[:id])

    render("old_jobs/edit.html.erb")
  end

  def update
    @old_job = OldJob.find(params[:id])

    @old_job.user_id = params[:user_id]

    save_status = @old_job.save

    if save_status == true
      redirect_to("/old_jobs/#{@old_job.id}", :notice => "Old job updated successfully.")
    else
      render("old_jobs/edit.html.erb")
    end
  end

  def destroy
    @old_job = OldJob.find(params[:id])

    @old_job.destroy

    if URI(request.referer).path == "/old_jobs/#{@old_job.id}"
      redirect_to("/", :notice => "Old job deleted.")
    else
      redirect_to(:back, :notice => "Old job deleted.")
    end
  end
end
