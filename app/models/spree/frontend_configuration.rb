module Spree
  class FrontendConfiguration < Preferences::Configuration
    preference :locale, :string, default: Rails.application.config.i18n.default_locale
    preference :allow_backorder_shipping, :boolean, default: false # should only be true if you don't need to track inventory
  end
end
