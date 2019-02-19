module Api::V1
	class TextsController < ApplicationController
	  respond_to :json

	  def index
	  	@texts = Text.all
	  	render json: { texts: @texts }
	    # respond_with Text.all
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

		def text_params
		  params.require(:text).permit(:label_name, :required_field, :half_width)
		end
	end
end