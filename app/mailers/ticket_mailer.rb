class TicketMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.ticket_mailer.ticket_receipt.subject
  #
  def ticket_receipt(ticket)
    @ticket = ticket

    mail to: @ticket.email_address, 
         subject: "Receipt for #{@ticket.show.movie.title}"
  end
end
