class ContactController < ApplicationController
  def index
  end

  def send_mail
    mail = Mail.new
    mail.from = params[:contact][:email]
    mail.to = Setting.find_by(key: 'contact_email').value
    mail.subject = 'Bricolsud: Contact Form Message'
    mail.body = "From: #{params[:contact][:name]} <#{params[:contact][:email]}>\r\n<br>" +
      "Phone Number: #{params[:contact][:phone]}\r\n<br>" +
      "Subject: #{params[:contact][:subject]}\r\n<br>" +
      "Body: #{params[:contact][:message]}"

    render text: mail.body

    # mail.deliver!

    # flash[:success] = 'Message sent'
    # redirect_to contact_path
  end
end
