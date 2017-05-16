class JobsController < ApplicationController

def index
    @job = Job.all
end

def new
    @job = Job.new
end

def create
    puts "params", params.inspect

    @job = Job.create(
    Description: params[:job][:Description],

    Job_Origin: params[:job][:Job_Origin],

    Job_Destination: params[:job][:Job_Destination],

    Num_Containers_Transported: params[:job][:Num_Containers_Transported],

    Job_Cost: params[:job][:Job_Cost].to_f
    )

    puts "@jobs", @jobs.inspect

    @job.save

    if @job.save
      flash[:notice] = "The job was created"
      redirect_to job_path(@job)
    else
      flash[:alert] = "The job was not created"
      redirect_to new_job_path
    end

end


def edit
  @job = Job.find(params[:id])
end

def show
    @job = Job.find(params[:id])
    @boats = Boat.all
end

def combine
  @boatjob = BoatJob.create(job_id: params[:job_id], boat_id: params[:id])

    flash[:notice] = "The Job was asigned a Boat"
    redirect_to job_path(@job = Job.find(params[:job_id]))
end

def update
  @job = Job.find(params[:id])
  @job.Description = params[:job][:Description]

  @job.Job_Origin = params[:job][:Job_Origin]

  @job.Job_Destination = params[:job][:Job_Destination]

  @job.Num_Containers_Transported = params[:job][:Num_Containers_Transported]

  @job.Job_Cost = params[:job][:Job_Cost]

  if @job.save
    flash[:notice] = "The job was updated"
    redirect_to job_path(@job)
  else
    flash[:alert] = "The job was not updated"
    redirect_to edit_job_path(@job)
  end
end

def destroy

  @job = Job.find(params[:id])

  if @job.destroy
    flash[:notice] = "Job was deleted"
  else
    flash[:alert] = "Job could not be deleted"
  end

  redirect_to jobs_path

end


end
