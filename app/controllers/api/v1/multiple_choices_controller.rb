module Api::V1
	class MultipleChoicesController < ApplicationController
		before_action :set_multiple_choice, only: [:show]
	  # respond_to :json

	  def index
	  	@multiple_choices = MultipleChoice.all
	  	render json: @multiple_choices, each_serializer: MultipleChoiceSerializer
	  end

	  def show
	  	render json: @multiple_choice, each_serializer: MultipleChoiceSerializer
	  end

	  def new
	  	@multiple_choice = MultipleChoice.new
	  end

		def create
		  @multiple_choice = MultipleChoice.new(multiple_choice_params)
		  if @multiple_choice.save
		    respond_with :api, @multiple_choice, status: :ok, location: api_v1_multiple_choices_url
		  else
		    render json: { errors: @multiple_choice.errors.full_messages }, status: :unprocessable_entity
		  end
		end

		private

		def set_multiple_choice
      @multiple_choice = MultipleChoice.find(params[:id])
    end

		def multiple_choice_params
		  params.require(:multiple_choice).permit(:label_name, :required_field, :half_width)
		end
	end
end