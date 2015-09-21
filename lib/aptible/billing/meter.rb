module Aptible
  module Billing
    class Meter < Resource
      field :id
      field :size
      field :type, type: String
      field :description, type: String
      field :account_id, type: String
      field :created_at, type: Time
      field :updated_at, type: Time
      field :started_at, type: Time
      field :ended_at, type: Time

      def billing_detail
        Aptible::Billing::BillingDetail.find_by_url(
          links['billing_detail'].href,
          token: token,
          headers: headers)
      rescue
        nil
      end
    end
  end
end
