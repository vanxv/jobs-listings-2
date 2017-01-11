class JobsController < ApplicationController
  def show
    @job = job.find(params[:id])
  end
  def new
    @job = Job.new
  end
  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to jobs_path
    else
      render :new
    end
  end

  def index
    @jobs = Job.all
  end
end

private
  def job_params
    params.require(:job).permit(:title, :description)
  end
