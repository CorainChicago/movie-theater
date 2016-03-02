class TicketsController < ApplicationController
  
  def new
    @ticket = Ticket.new
    @show = Show.find(params[:show_id])
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @show = Show.find(params[:show_id])
    @ticket.show_id = @show.id
    if ticket_params.has_key?(:age)
      @ticket.create_age(ticket_params)
    end
    if @ticket.save
      @ticket.show.increment!(:seats_sold)
      TicketMailer.ticket_receipt(@ticket).deliver_now
      flash[:notice] = "Your ticket to #{@show.movie.title} was purchased.  Please look for an email with your receipt. "
      redirect_to root_path
    else
      @errors = @ticket.errors.full_messages
      reset_cc_and_age(@ticket)
      render 'tickets/new', locals: { ticket: @ticket }
    end
  end

  private

  def ticket_params
    params.require(:ticket).permit(:first_name, :last_name, :email_address, :email_address_confirmation, :credit_card_number, :credit_card_expiration_date, :age) 
  end

end
