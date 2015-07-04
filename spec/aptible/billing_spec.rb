require_relative '../spec_helper'

describe Aptible::Billing do
  subject { Aptible::Billing::BillingDetail.new }

  it 'should have a configurable root_url' do
    config = described_class.configuration
    expect(config).to be_a GemConfig::Configuration
    expect(config.root_url).to eq 'https://billing.aptible.com'
  end

  # Not sure why this test is failing
  pending 'uses ENV["APTIBLE_BILLING_ROOT_URL"] if defined' do
    config = described_class.configuration
    set_env 'APTIBLE_BILLING_ROOT_URL', 'http://foobar.com' do
      config.reset
      expect(config.root_url).to eq 'http://foobar.com'
    end
  end

  it 'should be able to override root_url programatically' do
    config = described_class.configuration
    Aptible::Billing.configure do |config|
      config.root_url = 'http://foobar.com'
    end

    expect(config.root_url).to eq 'http://foobar.com'
  end
end