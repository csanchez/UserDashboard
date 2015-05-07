class UserMailer < ActionMailer::Base
  default from: "caer@ciencias.unam.mx"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.activation_needed_email.subject
  #
  def activation_needed_email(user)
    @greeting = "Hi"

    mail to: "caer@ciencias.unam.mx"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.activation_success_email.subject
  #
  def activation_success_email(user)
    @greeting = "Hi"

    mail to: "caer@ciencias.unam.mx"
  end
end
