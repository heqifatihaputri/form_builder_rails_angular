class SubMultipleChoicesController < ApplicationController
  before_action :set_sub_multiple_choice, only: [:show, :edit, :update, :destroy]

  # GET /sub_multiple_choices
  # GET /sub_multiple_choices.json
  def index
    @sub_multiple_choices = SubMultipleChoice.all
  end

  # GET /sub_multiple_choices/1
  # GET /sub_multiple_choices/1.json
  def show
  end

  # GET /sub_multiple_choices/new
  def new
    @sub_multiple_choice = SubMultipleChoice.new
  end

  # GET /sub_multiple_choices/1/edit
  def edit
  end

  # POST /sub_multiple_choices
  # POST /sub_multiple_choices.json
  def create
    @sub_multiple_choice = SubMultipleChoice.new(sub_multiple_choice_params)

    respond_to do |format|
      if @sub_multiple_choice.save
        format.html { redirect_to @sub_multiple_choice, notice: 'Sub multiple choice was successfully created.' }
        format.json { render :show, status: :created, location: @sub_multiple_choice }
      else
        format.html { render :new }
        format.json { render json: @sub_multiple_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_multiple_choices/1
  # PATCH/PUT /sub_multiple_choices/1.json
  def update
    respond_to do |format|
      if @sub_multiple_choice.update(sub_multiple_choice_params)
        format.html { redirect_to @sub_multiple_choice, notice: 'Sub multiple choice was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_multiple_choice }
      else
        format.html { render :edit }
        format.json { render json: @sub_multiple_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_multiple_choices/1
  # DELETE /sub_multiple_choices/1.json
  def destroy
    @sub_multiple_choice.destroy
    respond_to do |format|
      format.html { redirect_to sub_multiple_choices_url, notice: 'Sub multiple choice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_multiple_choice
      @sub_multiple_choice = SubMultipleChoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_multiple_choice_params
      params.require(:sub_multiple_choice).permit(:choice_name, :price)
    end
end
