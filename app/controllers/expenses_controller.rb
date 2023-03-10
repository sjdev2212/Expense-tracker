class ExpensesController < ApplicationController
  def index
    @expenses = current_user.expenses
  end

  def show
    @expense = current_user.expenses.find(params[:id])
  end

  def new
    @expense = Expense.new
  end

  def create
    expense = current_user.expenses.new(expense_params)
    if expense.save
      redirect_to root_path
      flash[:success] = 'The expense was saved successfully!'
    else

      redirect_to root_path
    end
  end

  def destroy
    @expense = current_user.expenses.find(params[:id])
    @expense.destroy
    flash[:success] = 'The expense was deleted successfully!'
    redirect_to root_path
  end

  def edit
    @expense = Expense.find(params[:id])
  end

  def update
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :description, :amount, :user_id)
  end
end
