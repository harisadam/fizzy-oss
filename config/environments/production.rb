Rails.application.configure do
  config.action_mailer.delivery_method = ENV.fetch("MAILER_DELIVERY_METHOD", "sendmail").to_sym

  config.action_mailer.smtp_settings = {
    address: ENV.fetch("SMTP_ADDRESS", "localhost"),
    port: ENV.fetch("SMTP_PORT", "587").to_i,
    domain: ENV.fetch("SMTP_DOMAIN", nil),
    user_name: ENV.fetch("SMTP_USERNAME", nil),
    password: ENV.fetch("SMTP_PASSWORD", nil),
    authentication: ENV.fetch("SMTP_AUTHENTICATION", "plain"),
    enable_starttls_auto: ENV.fetch("SMTP_ENABLE_STARTTLS_AUTO", "true") == "true"
  }

  config.action_mailer.sendmail_settings = {
    location: ENV.fetch("SENDMAIL_LOCATION", "/usr/sbin/sendmail"),
    arguments: ENV.fetch("SENDMAIL_ARGUMENTS", "-i")
  }
end