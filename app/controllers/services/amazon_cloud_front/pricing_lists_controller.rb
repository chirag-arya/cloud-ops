class Services::AmazonCloudFront::PricingListsController < ApplicationController
  def lists_by_region
  	result = []
  	price_list_data = PricingList.last
  	on_demand_data = price_list_data[:data]["terms"]["OnDemand"]
  	on_demand_data.each do |key, value|
  		value.each do |kk,vv|
  		  vv["priceDimensions"].each do |pdk, pdv|
  			  res = pdv.except!("rateCode", "appliesTo")
  			  result << res
  			end
  		end
  	end
  	respond_to do |format|
  		format.json  { render :json => result }
  	end
  end
end