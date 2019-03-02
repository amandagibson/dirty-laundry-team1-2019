Rails.configuration.stripe = {
    :publishable_key => ENV['pk_test_uC6X9Rshj8WCjuGBfN9o9HvT'],
    :secret_key      => ENV['sk_test_SfGc4FrtyPJXeMQP58EJRmxM']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]