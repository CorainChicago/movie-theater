class TicketMailer < ApplicationMailer

  default from: "chaysmagan@gmail.com"

  def ticket_purchase(ticket)
    @ticket = ticket
    @url = 'http:movietheather/ticket/new'
    mail(to: @ticket.email_address, subject: "Movie Ticket Reciept")
  end
end
