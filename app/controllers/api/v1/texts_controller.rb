module Api::V1
	class TextsController < ApplicationController
		before_action :set_text, only: [:show]
	  # respond_to :json

	  def index
	  	@texts = Text.all
	  	render json: @texts, each_serializer: TextSerializer
	    # respond_with Text.all
	  end


		def show
			render json: @text, each_serializer: TextSerializer
		end

	  def new
	  	@text = Text.new
	  end

		def create
		  @text = Text.new(text_params)
		  if @text.save
		    respond_with :api, @text, status: :ok, location: api_v1_texts_url
		  else
		    render json: { errors: @text.errors.full_messages }, status: :unprocessable_entity
		  end
		end

		# def create
		#   @text = Text.new(text_params)
		#   if @text.save
		#     render json: @text
		#   else
		#     render json: { errors: @text.errors.full_messages }, status: :unprocessable_entity
		#   end
		# end

		private

		def set_text
			@text = Text.find(params[:id])
		end

		def text_params
		  params.require(:text).permit(:label_name, :required_field, :half_width)
		end
	end
end