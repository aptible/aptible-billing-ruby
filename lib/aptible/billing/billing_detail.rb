require 'stripe'

module Aptible
  module Billing
    class BillingDetail < Resource
      field :id
      field :created_at, type: Time
      field :updated_at, type: Time
      field :stripe_customer_id
      field :stripe_subscription_id
      field :stripe_subscription_status
      field :plan
      field :billing_contact_id

      def stripe_customer
        return nil if stripe_customer_id.nil?
        @stripe_customer ||= Stripe::Customer.retrieve(stripe_customer_id)
      end

      def can_manage_compliance?
        %w(production pilot).include?(plan)
      end

      def subscription
        return nil if stripe_subscription_id.nil?
        subscriptions = stripe_customer.subscriptions
        @subscription ||= subscriptions.retrieve(stripe_subscription_id)
      end

      def subscribed?
        !!stripe_subscription_id
      end
    end
  end
end