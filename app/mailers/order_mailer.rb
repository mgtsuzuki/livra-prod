class OrderMailer < ApplicationMailer
  default from: 'Maria da Silva <Maria@gmail.com>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject
  #
  def received(order)
    @order = order

    mail to: order.email, subject: 'Livraria Virtual - Confirmacao de Pedido' do |format|
      format.text
    end
  end
end