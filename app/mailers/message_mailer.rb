class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.contact_us.subject
  #
  def contact_us(message)
    @greeting = "Hi"
    @body = message.body

    mail to: "dschmura@humbledaisy.com", subject: @greeting, from: message.email, bcc: message.email, body: message.body
  end

end

