class MyDataController < ApplicationController
  before_action :set_my_datum, only: %i[ show edit update destroy ]

  # GET /my_data or /my_data.json
  def index
    @my_data = MyDatum.all
  end

  # GET /my_data/1 or /my_data/1.json
  def show
  end

  # GET /my_data/new
  def new
    @my_datum = MyDatum.new
  end

  # GET /my_data/1/edit
  def edit
  end

  # POST /my_data or /my_data.json
  def create
    @my_datum = MyDatum.new(my_datum_params)

    respond_to do |format|
      if @my_datum.save
        format.html { redirect_to my_datum_url(@my_datum), notice: "My datum was successfully created." }
        format.json { render :show, status: :created, location: @my_datum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @my_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_data/1 or /my_data/1.json
  def update
    respond_to do |format|
      if @my_datum.update(my_datum_params)
        format.html { redirect_to my_datum_url(@my_datum), notice: "My datum was successfully updated." }
        format.json { render :show, status: :ok, location: @my_datum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @my_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_data/1 or /my_data/1.json
  def destroy
    @my_datum.destroy

    respond_to do |format|
      format.html { redirect_to my_data_url, notice: "My datum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_datum
      @my_datum = MyDatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def my_datum_params
      params.require(:my_datum).permit(:StudentID, :Name, :Email, :Year, :Building, :Room)
    end
end
