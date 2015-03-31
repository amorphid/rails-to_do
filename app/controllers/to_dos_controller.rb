class ToDosController < ApplicationController
  def create
    to_do = ToDo.new(to_do_params)
    to_do.save
    redirect_to to_dos_path
  end

  def index
    @to_dos = ToDo.all
  end

  private

  def to_do_params
    params.require(:to_do).permit(:description)
  end
end
