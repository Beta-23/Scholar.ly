Rails.configuration.stripe = {
  :publishable_key => ENV['PUBLISHABLE_KEY=pk_test_amTl5pSFnssjmQHp0W157mV6'],
  :secret_key      => ENV['SECRET_KEY=sk_test_2uVaR6bqozrCvVLAOjMBPQdc']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]