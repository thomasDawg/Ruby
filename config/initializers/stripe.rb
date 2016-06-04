
Rails.configuration.stripe = {
    :publishable_key => Rails.application.secrets.stripe_publishable_key,
    :secret_key      => Rails.application.secrets.stripe_secret_key
}

Stripe.verify_ssl_certs = false
Stripe.api_key = Rails.application.secrets.stripe_secret_key