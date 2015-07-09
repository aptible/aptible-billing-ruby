require 'aptible/resource'

module Aptible
  module Billing
    class Resource < Aptible::Resource::Base
      def namespace
        'Aptible::Billing'
      end

      def root_url
        Aptible::Billing.configuration.root_url
      end
    end
  end
end

require 'aptible/billing/billing_detail'
