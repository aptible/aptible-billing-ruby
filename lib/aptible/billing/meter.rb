module Aptible
  module Billing
    class Meter < Resource
      field :id
      field :size
      field :meter_type, type: String
      field :description, type: String
      field :account_id, type: String
      field :created_at, type: Time
      field :updated_at, type: Time
      field :started_at, type: Time
      field :ended_at, type: Time
      belongs_to :billing_detail
    end
  end
end
