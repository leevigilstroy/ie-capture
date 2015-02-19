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
      redirect_to(:action => 'show', :id => @income.id)
    end
  end
  
  def show
    @income = Income.find(params[:id])
  end
  
 
  private
  
  def income_params
    params.require(:income).permit(:first_name, :last_name, :date_of_birth, :income1, :income2, :income3, :income4, :income5, :income6, :income7, :income8, :income9, :income10)
  end
end
