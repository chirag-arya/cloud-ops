Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :services, defaults: { format: 'json' } do
  	scope :module => 'amazon_cloud_front' do
      get 'AmazonCloudFront/region/:name', to: 'pricing_lists#lists_by_region'
    end
  end
end
