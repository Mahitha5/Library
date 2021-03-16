class CheckOutsController < ApplicationController
  def index
  end

  def new
    print "in new"
    @borrow = CheckOut.new
  end

  def create
    print "in create"
    print checkout_params
    @borrow = CheckOut.create(checkout_params)

    if @borrow
      redirect_to "/check-outs"
    else
      render :new
    end
  end

  private
  def checkout_params
    print "in params"
    print params.require(:check_out)
    params.require(:check_out).permit(:user_id, :book_id, :due_date)
  end
end
