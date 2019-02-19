module Api::V1
	class EmailsController < ApplicationController
	  respond_to :json

	  def index
	  	@emails = Email.all
	  	render json: { emails: @emails }
	  end

	  def new
	  	@email = Email.new
	  end

		def create
		  @email = Email.new(email_params)
		  if @email.save
		    respond_with :api, @email, status: :ok, location: api_v1_emails_url
		  else
		    render json: { errors: @email.errors.full_messages }, status: :unprocessable_entity
		  end
		end

		private

		def email_params
		  params.require(:email).permit(:label_name, :required_field, :half_width)
		end
	end
end