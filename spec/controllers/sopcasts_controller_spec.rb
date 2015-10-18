require 'rails_helper'

RSpec.describe SopcastsController, :type => :controller do
  let(:valid_attributes) do
    {url: 'sop://sopcast.com:321/23213', active: true}
  end

  let(:invalid_attributes) do
    {active: false}
  end

  describe "GET index" do
    it "assigns all sopcasts as @sopcasts" do
      sopcast = Sopcast.create! valid_attributes
      get :index
      expect(assigns(:sopcasts)).to eq([sopcast])
    end
  end

  describe "GET show" do
    it "assigns the requested sopcast as @sopcast" do
      sopcast = Sopcast.create! valid_attributes
      get :show, params: {id: sopcast.to_param}
      expect(assigns(:sopcast)).to eq(sopcast)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Sopcast" do
        expect {
          post :create, params: {sopcast: valid_attributes}
        }.to change(Sopcast, :count).by(1)
      end

      it "assigns a newly created sopcast as @sopcast" do
        post :create, params: {sopcast: valid_attributes}
        expect(assigns(:sopcast)).to be_a(Sopcast)
        expect(assigns(:sopcast)).to be_persisted
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved sopcast as @sopcast" do
        post :create, params: {sopcast: invalid_attributes}
        expect(assigns(:sopcast)).to be_a_new(Sopcast)
      end
    end
  end

  describe "PUT update" do
    let!(:sopcast) { create :sopcast }

    describe "with valid params" do
      it "updates the requested sopcast" do
        patch :update, params: {id: sopcast.to_param, sopcast: valid_attributes}
        sopcast.reload
        expect(sopcast.url).to eq(valid_attributes[:url])
        expect(sopcast.active).to eq(valid_attributes[:active])
      end

      it "assigns the requested sopcast as @sopcast" do
        patch :update, params: {id: sopcast.to_param, sopcast: valid_attributes}
        expect(assigns(:sopcast)).to eq(sopcast)
      end
    end

    describe "with invalid params" do
      it "assigns the sopcast as @sopcast" do
        sopcast = Sopcast.create! valid_attributes
        patch :update, params: {id: sopcast.to_param, sopcast: invalid_attributes}
        expect(assigns(:sopcast)).to eq(sopcast)
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested sopcast" do
      sopcast = Sopcast.create! valid_attributes
      expect {
        delete :destroy, params: {id: sopcast.to_param}
      }.to change(Sopcast, :count).by(-1)
    end
  end
end
