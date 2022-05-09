class PolarBearPlacesController < ApplicationController
  def index
    @students = Student.all
  end

  def handlePost
    puts "-------IN HANDLE POST-------"
    house = params[:houseInput]
    map = {"House" => house}
    newRow = Housing.new(map)
    respond_to do |format|
      if newRow.save
        puts "Success!"
        format.html{redirect_to root_url}
      else
        format.html{redirect_to "/"}
      end
    end
  end

  # def enterStudent
    

  def new
    @house = Housing.new
  end
    
end
