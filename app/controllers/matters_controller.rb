class MattersController < ApplicationController
  def index
    @matters = Matter.all
  end

  def show
    @matter = Matter.find(params[:id])
  end

  def new
    @matter = Matter.new
  end

  def create
    @matter = Matter.new
    @matter.matter_name = params[:matter_name]
    @matter.owner_id = params[:owner_id]

    if @matter.save
      redirect_to "/matters", :notice => "Matter created successfully."
    else
      render 'new'
    end
  end

  def edit
    @matter = Matter.find(params[:id])
  end

  def update
    @matter = Matter.find(params[:id])

    @matter.matter_name = params[:matter_name]
    @matter.owner_id = params[:owner_id]

    if @matter.save
      redirect_to "/matters", :notice => "Matter updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @matter = Matter.find(params[:id])

    @matter.destroy

    redirect_to "/matters", :notice => "Matter deleted."
  end
end
