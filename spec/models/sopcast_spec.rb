require 'rails_helper'

RSpec.describe Sopcast, :type => :model do
  describe 'validations' do
    it { should validate_presence_of :url }
  end
end