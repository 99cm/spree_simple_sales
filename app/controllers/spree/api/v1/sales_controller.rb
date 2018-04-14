module Spree
    module Api
        module V1
            class SalesController < Spree::Api::BaseController
                def index
                    @products = Spree::Product.joins(:variants_including_master).where('spree_variants.sale_price is not null').distinct
                    
                    expires_in 15.minutes, public: true
                    
                    headers['Surrogate-Control'] = "max-age=#{15.minutes}"
                    respond_with(@products)
                end
            end
        end
    end
end