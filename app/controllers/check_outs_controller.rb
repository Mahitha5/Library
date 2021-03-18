class CheckOutsController < ApplicationController
  def index
    @checkouts = CheckOut.all
  end

  def new
    @borrow = CheckOut.new
  end

  def create
    @borrow = CheckOut.create!(checkout_params)

    if @borrow
      redirect_to "/check-outs"
    else
      render :new
    end
  end

  def delete
    @borrowed_book = CheckOut.find_by(params[:id])
    @borrowed_book.destroy
    redirect_to "/check-outs"
  end

  private
  def checkout_params
    params.require(:check_out).permit(:user_id, :book_id, :due_date)
  end
end
