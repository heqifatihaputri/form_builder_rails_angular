class SubDropdownsController < ApplicationController
  before_action :set_sub_dropdown, only: [:show, :edit, :update, :destroy]

  # GET /sub_dropdowns
  # GET /sub_dropdowns.json
  def index
    @sub_dropdowns = SubDropdown.all
  end

  # GET /sub_dropdowns/1
  # GET /sub_dropdowns/1.json
  def show
  end

  # GET /sub_dropdowns/new
  def new
    @sub_dropdown = SubDropdown.new
  end

  # GET /sub_dropdowns/1/edit
  def edit
  end

  # POST /sub_dropdowns
  # POST /sub_dropdowns.json
  def create
    @sub_dropdown = SubDropdown.new(sub_dropdown_params)

    respond_to do |format|
      if @sub_dropdown.save
        format.html { redirect_to @sub_dropdown, notice: 'Sub dropdown was successfully created.' }
        format.json { render :show, status: :created, location: @sub_dropdown }
      else
        format.html { render :new }
        format.json { render json: @sub_dropdown.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_dropdowns/1
  # PATCH/PUT /sub_dropdowns/1.json
  def update
    respond_to do |format|
      if @sub_dropdown.update(sub_dropdown_params)
        format.html { redirect_to @sub_dropdown, notice: 'Sub dropdown was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_dropdown }
      else
        format.html { render :edit }
        format.json { render json: @sub_dropdown.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_dropdowns/1
  # DELETE /sub_dropdowns/1.json
  def destroy
    @sub_dropdown.destroy
    respond_to do |format|
      format.html { redirect_to sub_dropdowns_url, notice: 'Sub dropdown was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_dropdown
      @sub_dropdown = SubDropdown.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_dropdown_params
      params.require(:sub_dropdown).permit(:choice_name, :price)
    end
end
