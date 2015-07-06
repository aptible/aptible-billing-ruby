require 'gem_config'
require 'aptible/billing/version'

module Aptible
  module Billing
    include GemConfig::Base

    with_configuration do
      override = ENV['APTIBLE_BILLING_ROOT_URL']
      has :root_url,
          classes: [String],
          default: override || 'https://billing.aptible.com'
    end
  end
end

require 'aptible/billing/resource'
