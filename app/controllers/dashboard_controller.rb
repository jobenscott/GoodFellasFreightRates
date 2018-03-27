class DashboardController < ApplicationController
  def home
  	

  end

  def home_two

  end

  def get_rates
  	rate_ref = params[:rate_ref].to_s
  	# zipcode = params[:zipcode]

  	miles = params[:miles].to_i

  	return_rate = nil

  	case rate_ref
	when 'van-rates'    #compare to 1
		return_rate = 2.55*miles
		# return_rate = VanRate.find_by_zipcode(zipcode.to_i)
	when '16ft-rates'    #compare to 2
		return_rate = 3.15*miles
	  	# return_rate = SixTeenFootRate.find_by_zipcode(zipcode.to_i)
	when '26ft-rates'
		return_rate = 3.35*miles
	  	# return_rate = TwentySixFootRate.find_by_zipcode(zipcode.to_i)
	end

  	

  	respond_to do |format|
	    format.json {
	    	render js: return_rate.to_json
	    }
	end
  end
end
