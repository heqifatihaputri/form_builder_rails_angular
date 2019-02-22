module Api::V1
	class SubMultipleChoicesController < ApplicationController
		before_action :set_sub_multiple_choice, only: [:show]
	  respond_to :json

	  def index
	  	@sub_multiple_choices = SubMultipleChoice.all
	  	render json: @sub_multiple_choices, each_serializer: SubMultipleChoiceSerializer
	  end

	  def show
	  	render json: @sub_multiple_choice, each_serializer: SubMultipleChoiceSerializer
	  end

	  def new
	  	@sub_multiple_choice = SubMultipleChoice.new
	  end

		def create
		  @sub_multiple_choice = SubMultipleChoice.new(sub_multiple_choice_params)
		  if @sub_multiple_choice.save
		    respond_with :api, @sub_multiple_choice, status: :ok, location: api_v1_sub_multiple_choices_url
		  else
		    render json: { errors: @sub_multiple_choice.errors.full_messages }, status: :unprocessable_entity
		  end
		end

		private

		def set_sub_multiple_choice
      @sub_multiple_choice = SubMultipleChoice.find(params[:id])
    end

		def sub_multiple_choice_params
		  params.require(:sub_multiple_choice).permit(:choice_name, :price)
		end
	end
end