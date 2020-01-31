class FetchPricingListFromAmazonCloudFrontJob < ApplicationJob
  queue_as :default

  def perform(*args)
  	response = Request.get
    PricingList.create(data: response, date: Time.now) unless response[:errors].present?
  end
end
