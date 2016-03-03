require 'rails_helper'

RSpec.describe Ticket, type: :model do
  
  let(:ticket) {Ticket.new(:email_address => "corahays@yahoo.com")}

  it 'sends an email' do
    expect { ticket.ticket_purchase(ticket) }.to change { ActionMailer::Base.deliveries.count }.by(1)
  end
end

