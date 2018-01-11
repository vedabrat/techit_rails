Rails.configuration.simpleformapi = {
  :publishable_key => ENV['SIMPLEFORM_KEY'],
}

Stripe.api_key = Rails.configuration.simpleformapi[:publishable_key]
