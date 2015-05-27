class Api::V1::AbTestingsController < ApplicationController

  use_vanity do |c|
    c.params[:userID]
  end

  def variants
    variant = ab_test(params[:experiment])
    render :json => { variant: variant, s: 0 }.to_json
  end

  def track
    render :json => { s: 0 }
  end
end
