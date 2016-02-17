class TicketsController < ApplicationController
  
  def new
    @ticket = Ticket.new
    @show = Show.find(params[:show_id])
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @show = Show.find(params[:show_id])
    @ticket.show_id = @show.id
    cc_valid = @ticket.check_card_is_valid?(@ticket.credit_card_number.to_i)
    if @ticket.valid? && cc_valid
      @ticket.credit_card_number = @ticket.credit_card_number.to_s.chars[-4..-1]
      @ticket.save
      @ticket.show.increment!(:seats_sold)
      TicketMailer.ticket_receipt(@ticket).deliver_now
      redirect_to show_ticket_path(@show.id, @ticket.id)
    else
      @errors = @ticket.errors.full_messages
      render 'tickets/new'
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
    @show = Show.find(params[:show_id])
  end

  private

  def ticket_params
    params.require(:ticket).permit(:first_name, :last_name, :email_address, :credit_card_number, :credit_card_expiration_date, :age) 
  end

end
