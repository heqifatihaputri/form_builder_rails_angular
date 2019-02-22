module Api::V1
	class DatetimesController < ApplicationController
	  # respond_to :json
	  before_action :set_datetime, only: [:show]

	  def index
	  	@datetimes = Datetime.all
	  	render json: @datetimes, each_serializer: DatetimeSerializer
	  end

	  def show
	  	render json: @datetime, each_serializer: DatetimeSerializer
	  end

	  def new
	  	@datetime = Datetime.new
	  end

		def create
		  @datetime = Datetime.new(datetime_params)
		  if @datetime.save
		    respond_with :api, @datetime, status: :ok, location: api_v1_datetimes_url
		  else
		    render json: { errors: @datetime.errors.full_messages }, status: :unprocessable_entity
		  end
		end

		private

		def set_datetime
      @datetime = Datetime.find(params[:id])
    end

		def datetime_params
		  params.require(:datetime).permit(:label_name, :required_field, :half_width, :display_type, :date_format, :time_type)
    end
	end
end