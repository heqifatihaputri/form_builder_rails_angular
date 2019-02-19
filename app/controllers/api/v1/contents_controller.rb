module Api::V1
	class ContentsController < ApplicationController
	  respond_to :json

	  def index
	  	@contents = Content.all
	  	render json: { contents: @contents }
	  end

	  def new
	  	@content = Content.new
	  end

		def create
		  @content = Content.new(content_params)
		  if @content.save
		    respond_with :api, @content, status: :ok, location: api_v1_contents_url
		  else
		    render json: { errors: @content.errors.full_messages }, status: :unprocessable_entity
		  end
		end

		private

		def content_params
		  params.require(:content).permit(:title, :description, :button_text)
		end
	end
end