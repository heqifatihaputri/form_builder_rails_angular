module Api::V1
	class SubDropdownsController < ApplicationController
		before_action :set_sub_dropdown, only: [:show]
	  # respond_to :json

	  def index
	  	@sub_dropdowns = SubDropdown.all
	  	render json: @sub_dropdowns, each_serializer: SubDropdownSerializer
	  end

	  def show
	  	render json: @sub_dropdown, each_serializer: SubDropdownSerializer
	  end

	  def new
	  	@sub_dropdown = SubDropdown.new
	  end

		def create
		  @sub_dropdown = SubDropdown.new(sub_dropdown_params)
		  if @sub_dropdown.save
		    respond_with :api, @sub_dropdown, status: :ok, location: api_v1_sub_dropdowns_url
		  else
		    render json: { errors: @sub_dropdown.errors.full_messages }, status: :unprocessable_entity
		  end
		end

		private

		def set_sub_dropdown
      @sub_dropdown = SubDropdown.find(params[:id])
    end

		def sub_dropdown_params
		  params.require(:sub_dropdown).permit(:choice_name, :price)
		end
	end
end