namespace :common do
  task store_fetched_data: :environment do
  	FetchPricingListFromAmazonCloudFrontJob.perform_now
  end
end