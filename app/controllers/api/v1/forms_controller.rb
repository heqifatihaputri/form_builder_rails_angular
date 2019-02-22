module Api::V1
	class FormsController < ApplicationController
		def index
	  	@forms = Form.all
	  	render json: @forms, each_serializer: FormSerializer
	  end
	end
end