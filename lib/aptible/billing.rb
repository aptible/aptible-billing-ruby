require 'gem_config'
require 'aptible/billing/version'

module Aptible
  module Billing
    include GemConfig::Base

    with_configuration do
      has :root_url,
          classes: [String],
          default: ENV['APTIBLE_BILLING_ROOT_URL'] || 'https://billing.aptible.com'
      end
  end
end

require 'aptible/billing/resource'
