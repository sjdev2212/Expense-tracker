class ExpensesController < ApplicationController
  def index
    @expenses = Expense.all
  end

  def show
    @expense = Expense.find(params[:id])
  end

  def new
    @expense = Expense.new
  end

  def create
    
    expense = current_user.expenses.new(expense_params)
    if expense.save
      redirect_to root_path
      flash[:success] = 'The category was saved successfully!'
    else
      flash.now[:error] = @expense.errors.full_messages
      redirect_to root_path
    end
  end

  def destroy
    @expense = Expense.find(params[:id])
    @expense.destroy
    redirect_to expenses_path
  end

  def edit
    @expense = Expense.find(params[:id])
  end

  def update
    @expense = Expense.find(params[:id])
    if @expense.update(expense_params)
      redirect_to expenses_path
    else
      render :edit
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :description, :amount, :user_id)
  end
end
