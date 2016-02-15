class TicketsController < ApplicationController
  
  def new
    @ticket = Ticket.new(ticket_params)
    if @ticket.valid?
      @ticket.save
    else
      @errors = @ticket.errors.full_messages
      render 'tickets/new'
    end
  end

  def show
  end

  private

  def ticket_params
    params.require(:ticket).permit(:email, :credit_card) 
    #params.require(:ticket).permit(:first_name, :last_name, :showing_id, :email, :credit_card) 

  end
end
