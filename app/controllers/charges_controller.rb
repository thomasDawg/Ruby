class ChargesController < ApplicationController

  def new
  end

  def create
    @amount = params[:stripeAmount]
    @show_amount = Integer(@amount)
    @email = params[:stripeEmail]
    @token = params[:stripeToken]

    customer = Stripe::Customer.create(
        :email => @email,
        :source  => @token
    )

    charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @amount,
        :description => 'Kjøp av data, kvitering sendt til' + @email,
        :currency    => 'nok',
        :receipt_email => @email
    )

    @name = params[:stripeShippingName]
    @line1 = params[:stripeShippingAddressLine1]
    @zip = params[:stripeShippingAddressZip]
    @state = params[:stripeShippingAddressState]
    @city = params[:stripeShippingAddressCity]
    @country = params[:stripeShippingAddressCountry]


  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
    flash[:notice] = "Please try again"
  end

end
