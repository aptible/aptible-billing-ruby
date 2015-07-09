require 'spec_helper'
require 'rspec/its'

describe Aptible::Billing::Resource do
  its(:namespace) { should eq 'Aptible::Billing' }
  its(:root_url) { should eq 'https://billing.aptible.com' }
end
