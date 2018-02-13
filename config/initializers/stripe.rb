Rails.configuration.stripe = {
  :publishable_key => ENV['PUBLISHABLE_KEY'],
  :secret_key      => ENV['SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]



# Rails.configuration.stripe = {
#   :publishable_key => ENV['PUBLISHABLE_KEY'],
#   :secret_key      => ENV['SECRET_KEY']
#
#   # :publishable_key => ENV['pk_live_j3uXtFOVlskL2cfNLoeZr0fCY'],
#   # :secret_key      => ENV['sk_live_ADta1br1E79w16alGPG7ezbn']
#
# }
#
# Stripe.api_key = Rails.configuration.stripe[:secret_key]
