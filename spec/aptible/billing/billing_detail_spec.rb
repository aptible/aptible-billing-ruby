require 'spec_helper'

describe Aptible::Billing::BillingDetail do
  describe '#can_manage_compliance?' do
    it 'should return true with compliance plan' do
      subject.stub(:plan) { 'production' }
      expect(subject.can_manage_compliance?).to be true
    end

    it 'should return false without compliance plan' do
      subject.stub(:plan) { 'platform' }
      expect(subject.can_manage_compliance?).to be false
    end
  end

  describe '#subscribed?' do
    it 'should return true with valid subscription ID' do
      subject.stub(:stripe_subscription_id) { 'sub_4YrmiVa3vMpaGA' }
      expect(subject.subscribed?).to be true
    end

    it 'should return false without valid subscription ID' do
      expect(subject.subscribed?).to be false
    end
  end
end
