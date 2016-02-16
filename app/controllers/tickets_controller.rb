class TicketsController < ApplicationController
  
  def new
    @ticket = Ticket.new
    @show = Show.find(params[:show_id])
  end

  def create
    @ticket = Ticket.new(ticket_params)
    
    if @ticket.save
      TicketMailer.ticket_purchase(@ticket).deliver
      redirect_to ticket_path(@ticket.id)
    else
      @errors = @ticket.errors.full_messages
      render 'tickets/new'
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  private

  def ticket_params
    params.require(:ticket).permit(:first_name, :last_name, :email_address, :credit_card_number, :credit_card_expiration_date) 
  end

end
