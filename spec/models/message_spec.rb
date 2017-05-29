require 'rails_helper'

RSpec.describe Message, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  it 'responds to name, email and body' do
    message = Message.new(name: "Test Name", email: "test@test.com", subject: "This is a test subject")

    # expect message.name to_by

  end

  it 'rejects emails that do not have a name, email address, and body.' do

  end

  it 'rejects email addresses that are not properly formatted' do

  end
end
