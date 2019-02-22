module Api::V1
	class ParagraphsController < ApplicationController
		before_action :set_paragraph, only: [:show]
	  # respond_to :json

	  def index
	  	@paragraphs = Paragraph.all
	  	render json: @paragraphs, each_serializer: ParagraphSerializer
	  end

	  def show
	  	render json: @paragraph, each_serializer: ParagraphSerializer	  	
	  end

	  def new
	  	@paragraph = Paragraph.new
	  end

		def create
		  @paragraph = Paragraph.new(paragraph_params)
		  if @paragraph.save
		    respond_with :api, @paragraph, status: :ok, location: api_v1_paragraphs_url
		  else
		    render json: { errors: @paragraph.errors.full_messages }, status: :unprocessable_entity
		  end
		end

		private

		def set_paragraph
      @paragraph = Paragraph.find(params[:id])
    end

		def paragraph_params
		  params.require(:paragraph).permit(:label_name, :required_field, :half_width, :limit_char, :input_height)
		end
	end
end