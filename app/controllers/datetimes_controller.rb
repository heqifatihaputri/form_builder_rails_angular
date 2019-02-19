class DatetimesController < ApplicationController
  before_action :set_datetime, only: [:show, :edit, :update, :destroy]

  # GET /datetimes
  # GET /datetimes.json
  def index
    @datetimes = Datetime.all
  end

  # GET /datetimes/1
  # GET /datetimes/1.json
  def show
  end

  # GET /datetimes/new
  def new
    @datetime = Datetime.new
  end

  # GET /datetimes/1/edit
  def edit
  end

  # POST /datetimes
  # POST /datetimes.json
  def create
    @datetime = Datetime.new(datetime_params)

    respond_to do |format|
      if @datetime.save
        format.html { redirect_to @datetime, notice: 'Datetime was successfully created.' }
        format.json { render :show, status: :created, location: @datetime }
      else
        format.html { render :new }
        format.json { render json: @datetime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /datetimes/1
  # PATCH/PUT /datetimes/1.json
  def update
    respond_to do |format|
      if @datetime.update(datetime_params)
        format.html { redirect_to @datetime, notice: 'Datetime was successfully updated.' }
        format.json { render :show, status: :ok, location: @datetime }
      else
        format.html { render :edit }
        format.json { render json: @datetime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datetimes/1
  # DELETE /datetimes/1.json
  def destroy
    @datetime.destroy
    respond_to do |format|
      format.html { redirect_to datetimes_url, notice: 'Datetime was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_datetime
      @datetime = Datetime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def datetime_params
      params.require(:datetime).permit(:label_name, :required_field, :half_width, :display_type, :date_format, :time_type)
    end
end
