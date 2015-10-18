require 'rails_helper'

RSpec.describe SopcastSerializer, type: :serializer do
  context 'Individual Resource Representation' do
    let(:resource) { build(:sopcast) }
    let(:serializer) { SopcastSerializer.new(resource) }
    let(:serialization) { ActiveModel::Serializer::Adapter.create(serializer) }

    subject do
      JSON.parse(serialization.to_json)
    end

    it 'has a url' do
      expect(subject['url']).to eq(resource.url)
    end

    it 'has an active' do
      expect(subject['active']).to eq(resource.active)
    end
  end
end
