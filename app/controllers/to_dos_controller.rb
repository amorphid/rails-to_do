class ToDosController < ApplicationController
  def create
    to_do = ToDo.new(to_do_params)
    to_do.save
    redirect_to to_dos_path
  end

  def destroy
    to_do = ToDo.find(params[:id])
    to_do.destroy
    redirect_to to_dos_path
  end

  def index
    @to_dos = ToDo.all
  end

  def update
    to_do = ToDo.find(params[:id])
    to_do.update(to_do_params)
    redirect_to to_dos_path
  end

  private

  def to_do_params
    params.require(:to_do).permit(:description, :is_completed)
  end
end
