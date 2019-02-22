class HomeController < ApplicationController
  before_action :set_form, only: [:show]

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
  end

  def show
    @inputs = @form.elements
    @content = @form.content
  end

  private

  def set_form
    @form = Form.find(params[:id])
  end
end
