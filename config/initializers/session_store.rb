if Rails.env == "production"
    Rails.application.config.session_store :cookie_store, key: "_goalify_authentication", domain: "http://localhost:3001"
else
    Rails.application.config.session_store :cookie_store, key: "_goalify_authentication"
end