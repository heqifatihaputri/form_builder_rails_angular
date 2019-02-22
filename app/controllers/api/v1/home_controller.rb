module Api::V1
	class HomeController < ApplicationController
		respond_to :json

		before_action :set_form, only: [:show, :show_content]
		
		def index
			@texts = Text.all
	  	@emails = Email.all
	  	@paragraphs = Paragraph.all
	  	@dropdowns = Dropdown.all
	  	@sub_dropdowns = SubDropdown.all
	  	@multiple_choices = MultipleChoice.all
	  	@sub_multiple_choices = SubMultipleChoice.all
	  	@datetimes = Datetime.all

	  	@inputs = @texts + @emails + @paragraphs + @dropdowns + @sub_dropdowns + @multiple_choices + @sub_multiple_choices + @datetimes
	  	# debugger
	  	render json: { inputs: @inputs }, each_serializer: HomeSerializer
	  	# render json: @inputs, each_serializer: HomeSerializer
		end

		def show
			@inputs = @form.elements
			render json: @inputs, each_serializer: ElementSerializer
		end

		def show_content
			@content = @form.content
		end

		private

		def set_form
			@form = Form.find(params[:id])
		end
	end
end