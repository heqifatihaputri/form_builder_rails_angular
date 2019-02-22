module Api::V1
	class ElementsController < ApplicationController
	  # before_action :set_element, only: [:show]

	  def index
	  	@elements = Element.all
	  	render json: @elements, each_serializer: ElementSerializer
	  end

	  # def show
	  # 	render json: @element, each_serializer: ElementSerializer
	  # end

	  def new
	  	@element = Element.new
	  end

		def create
		  @element = Element.new(element_params)
		  if @element.save
		    respond_with :api, @element, status: :ok, location: api_v1_elements_url
		  else
		    render json: { errors: @element.errors.full_messages }, status: :unprocessable_entity
		  end
		end

		private

		def set_element
      @element = Element.find(params[:id])
    end

		# def element_params
		#   params.require(:element).permit(:label_name, :required_field, :half_width)
		# end
	end
end