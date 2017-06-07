class LatestJobsController < ApplicationController
  def index
    @latest_jobs = LatestJob.all

    render("latest_jobs/index.html.erb")
  end

  def show
    @latest_job = LatestJob.find(params[:id])

    render("latest_jobs/show.html.erb")
  end

  def new
    @latest_job = LatestJob.new

    render("latest_jobs/new.html.erb")
  end

  def create
    @latest_job = LatestJob.new

    @latest_job.job_description = params[:job_description]
    @latest_job.date = params[:date]
    @latest_job.user_id = params[:user_id]

    save_status = @latest_job.save

    if save_status == true
      redirect_to("/latest_jobs/#{@latest_job.id}", :notice => "Latest job created successfully.")
    else
      render("latest_jobs/new.html.erb")
    end
  end

  def edit
    @latest_job = LatestJob.find(params[:id])

    render("latest_jobs/edit.html.erb")
  end

  def update
    @latest_job = LatestJob.find(params[:id])

    @latest_job.job_description = params[:job_description]
    @latest_job.date = params[:date]
    @latest_job.user_id = params[:user_id]

    save_status = @latest_job.save

    if save_status == true
      redirect_to("/latest_jobs/#{@latest_job.id}", :notice => "Latest job updated successfully.")
    else
      render("latest_jobs/edit.html.erb")
    end
  end

  def destroy
    @latest_job = LatestJob.find(params[:id])

    @latest_job.destroy

    if URI(request.referer).path == "/latest_jobs/#{@latest_job.id}"
      redirect_to("/", :notice => "Latest job deleted.")
    else
      redirect_to(:back, :notice => "Latest job deleted.")
    end
  end
end
