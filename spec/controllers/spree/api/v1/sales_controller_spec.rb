require 'spec_helper'

module Spree
    describe Api::V1::SalesController, type: :controller do
        
        render_views

        let!(:product) { create(:product, sale_price: 8.00)  }
        let!(:other_product) { create(:product) }
        let!(:user) { create(:user) }

        before do
            stub_authentication!
        end

        it 'retrieves a list of products in sale' do
            api_get :index
            expect(json_response.size).to eq(1)
            expect(json_response.first["sale_price"].to_f).to eq(product.sale_price)
        end
    end
end
