if Rails.env == "production"
    Rails.application.config.session_store :cookie_store, key: "_productivity_app", domain: "http://localhost:3001"
else
    Rails.application.config.session_store :cookie_store, key: "_productivity_app"
end