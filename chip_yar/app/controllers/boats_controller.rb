class BoatsController < ApplicationController

  def index
      @boats = Boat.all
  end

  def new
      @boat = Boat.new
  end

  def create
      puts "params", params.inspect

      @boat = Boat.create(
      Boat_Name: params[:boat][:Boat_Name],

      avatar: params[:boat][:avatar],

      Num_Containers: params[:boat][:Num_Containers],

      Current_Location: params[:boat][:Current_Location],

      Boat_Origin: params[:boat][:Boat_Origin],
      )

      puts "@boats", @boats.inspect

      @boat.save

      if @boat.save
        flash[:notice] = "The boat was created"
        redirect_to boat_path(@boat)
      else
        flash[:alert] = "The boat was not created"
        redirect_to new_boat_path
      end

  end


  def edit
    @boat = Boat.find(params[:id])
  end

  def show
      @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])
    @boat.Boat_Name = params[:boat][:Boat_Name]

    @boat.avatar = params[:boat][:avatar]

    @boat.Num_Containers = params[:boat][:Num_Containers]

    @boat.Current_Location = params[:boat][:Current_Location]

    @boat.Boat_Origin = params[:boat][:Boat_Origin]

    if @boat.save
      flash[:notice] = "The boat was updated"
      redirect_to boat_path(@boat)
    else
      flash[:alert] = "The boat was not updated"
      redirect_to edit_boat_path(@boat)
    end
  end

  def destroy

    @boat = Boat.find(params[:id])

    if @boat.destroy
      flash[:notice] = "boat was deleted"
    else
      flash[:alert] = "boat could not be deleted"
    end

    redirect_to boats_path

  end







end
