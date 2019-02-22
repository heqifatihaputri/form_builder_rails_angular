class ElementsController < ApplicationController
  before_action :set_element, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @elements = Element.all
    respond_with(@elements)
  end

  def show
    respond_with(@element)
  end

  def new
    @element = Element.new
    respond_with(@element)
  end

  def edit
  end

  def create
    @element = Element.new(element_params)
    @element.save
    respond_with(@element)
  end

  def update
    @element.update(element_params)
    respond_with(@element)
  end

  def destroy
    @element.destroy
    respond_with(@element)
  end

  private
    def set_element
      @element = Element.find(params[:id])
    end

    def element_params
      params.require(:element).permit(:form_id)
    end
end
