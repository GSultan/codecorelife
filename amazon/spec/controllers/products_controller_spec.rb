require 'rails_helper'


RSpec.describe ProductsController, type: :controller do
  describe '#show' do
    it 'renders the show template' do
      #GIVEN
      product = create(:product)
      # byebug
      #WHEN
      get :show, id: product.id
      #THEN
      expect(response).to render_template(:show)
    end
    it 'sets an instance variable with the product whose id is passed' do
      product = create(:product)
      get :show, id: product.id
      expect(assigns(:product)).to eq(product)
    end
  end
  #
    describe '#destroy' do
      it 'deletes the record' do
      #GIVEN
      product = create(:product)
      #WHEN
      get :destroy, id: product.id
      #THEN
      expect{product.reload}.to raise_error(ActiveRecord::RecordNotFound)
      # expect(response).to redirect_to(products_path)
      end
    end

    describe '#index' do
      it 'displays the index' do
      #GIVEN
      get :index
      #WHEN
      # get :destroy, id: product.id
      #THEN
      expect(response).to render_template(:index)
      # expect(response).to redirect_to(products_path)
      end
    end

    #new and create
    describe '#new' do     ######add a pound before describing new actions
        it 'renders the new template' do
          # this mimicks making a GET request to the CampaignsController
          get :new
          expect(response).to render_template(:new) #render_template is a matcher
          #that is specific to rspec-rails
        end
        it 'instantiates a new campaign object' do
          get :new
          #assigns(:campaign) will test for an instance variable: @campaign
          #be_a_new(Campaign) will match that the instance variable is of class
                                    #Campaign and it's a non-persisted object
          expect(assigns(:product)).to be_a_new(Product)
        end
      end
        describe '#create' do
          context 'with valid params' do
          def valid_request
            post :create, params: { product: attributes_for(:product)}

          end
          it 'saves a record to the DB' do
            count_before = Product.count
            valid_request
            count_after = Product.count
            expect(count_after).to eq(count_before + 1)
          end
          it 'redirects to the product show page' do
            valid_request
            expect(response).to redirect_to(product_path(Product.last))
          end
        end
      end
end

#destroy, show, and index
