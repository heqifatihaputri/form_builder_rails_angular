module Api::V1
	class DropdownsController < ApplicationController
	  respond_to :json

	  def index
	  	@dropdowns = Dropdown.all
	  	render json: { dropdowns: @dropdowns }
	  end

	  def new
	  	@dropdown = Dropdown.new
	  end

		def create
		  @dropdown = Dropdown.new(dropdown_params)
		  if @dropdown.save
		    respond_with :api, @dropdown, status: :ok, location: api_v1_dropdowns_url
		  else
		    render json: { errors: @dropdown.errors.full_messages }, status: :unprocessable_entity
		  end
		end

		private

		def dropdown_params
		  params.require(:dropdown).permit(:label_name, :required_field, :half_width)
		end
	end
end