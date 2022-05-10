class PolarBearPlacesController < ApplicationController
  def index
    @students = Student.all
  end

  def handlePost
    puts "-------IN HANDLE POST-------"

    id = params[:idInput]
    name = params[:nameInput]
    email = params[:emailInput]
    year = params[:yearInput]
    house = params[:houseInput]
    room = params[:roomInput]
    map = {"StudentID" => id,"Name" => name, "Email" => email, "Year" => year, "Building" => house, "Room" => room}
    newRow = MyDatum.new(map)
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
    @myInfo = MyDatum.new
  end

  def ladd
    @students = Student.all
  end

  def quinby
    @students = Student.all
  end

  def baxter
    @students = Student.all
  end

  def reed
    @students = Student.all
  end

  def howell
    @students = Student.all
  end

  def macmillan
    @students = Student.all
  end

  def boodyjohnson
    @students = Student.all
  end

  def burnett
    @students = Student.all
  end

  def helmreich
    @students = Student.all
  end

end
