module Aptible
  module Billing
    class Meter < Resource
      field :id
      field :size
      field :organization_id
      field :created_at, type: Time
      field :updated_at, type: Time
      field :started_at, type: Time
      field :ended_at, type: Time
      belongs_to :billing_detail

      def organization
        Aptible::Auth::Organization.find(
            links['organization_id'],
            token: token,
            headers: headers)
      rescue
        nil
      end

    end
  end
end
