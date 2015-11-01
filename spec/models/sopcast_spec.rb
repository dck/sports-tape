require 'rails_helper'

RSpec.describe Sopcast, :type => :model do
  describe 'validations' do
    it { should validate_presence_of :url }
    it { should allow_value('sop://host.vz:12313/chan').for(:url) }
    it { should_not allow_value('sop://').for(:url) }
    it { should_not allow_value('http://example.com').for(:url) }
    it { should_not allow_value('foo').for(:url) }
  end
end
