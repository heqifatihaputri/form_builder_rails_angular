class InputElementsController < ApplicationController
  before_action :set_form

  def index
  end

  def new
    @text = Text.new
  end

  def create_element(object)
    @element = Element.new(form_id: @form.id)
    @element.inputable_type = object.class.name
    @element.inputable_id = object.id
    @element.save
  end

  def input_text
    @text = Text.new
    @text.label_name = "Text"
    @text.required_field = false
    @text.half_width = false
    @text.save
    create_element(@text)
    redirect_to home_path(@form)
  end

  def input_email
    @email = Email.new
    @email.label_name = false
    @email.half_width = false
    @email.save
    create_element(@email)
    redirect_to home_path(@form)
  end

  def input_paragraph
    @paragraph = Paragraph.new
    @paragraph.label_name = false
    @paragraph.half_width = false
    @paragraph.limit_char = false
    @paragraph.input_height = "300px"
    @paragraph.save
    create_element(@paragraph)
    redirect_to home_path(@form)
  end

  def input_dropdown
    @dropdown = Dropdown.new
    @dropdown.label_name = false
    @dropdown.half_width = false
    @dropdown.save
    create_element(@dropdown)
    redirect_to home_path(@form)
  end

  def input_sub_dropdown
    @sub_dropdown = SubDropdown.new
    @sub_dropdown.choice_name = "Option1"
    @sub_dropdown.save
    create_element(@sub_dropdown)
    redirect_to home_path(@form)
  end

  def input_multiple_choice
    @multiple_choice = MultipleChoice.new
    @multiple_choice.label_name = false
    @multiple_choice.half_width = false
    @multiple_choice.save
    create_element(@multiple_choice)
    redirect_to home_path(@form)
  end

  def input_sub_multiple_choice
    @sub_multiple_choice = SubMultipleChoice.new
    @sub_multiple_choice.choice_name = "Option1"
    @sub_multiple_choice.save
    create_element(@sub_multiple_choice)
    redirect_to home_path(@form)
  end

  def input_datetime
    @datetime = Email.new
    @datetime.label_name = false
    @datetime.half_width = false
    @datetime.save
    create_element(@datetime)
    redirect_to home_path(@form)
  end

  private

  def set_form
    @form = Form.find(params[:form_id])
  end
end
