class IncomesController < ApplicationController 

  def index
    @incomes = Income.all
  end
  
  def new
    @income = Income.new
  end

  def create
    @income = Income.new(income_params)
    if @income.save
      redirect_to(:action => 'index')
    end
  end
  
  def show
    @income = Income.find(params[:id])
  end
  
 
  private
  
  def income_params
    params.require(:income).permit(:first_name, :last_name)
  end
end
