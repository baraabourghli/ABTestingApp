class Api::V1::AbTestingsController < ApplicationController
  before_filter :check_prerequisites

  use_vanity do |c|
    c.params[:userID]
  end

  def variants
    variant = ab_test(params[:experiment].try(:to_sym))
    render :json => { variant: variant, s: 0 }.to_json
  end

  def track
    track!(params[:experiment].to_sym, { identity: params[:userID] })
    render :json => { s: 0 }
  end

  private

  def check_prerequisites
    render_error unless params[:userID] && params[:experiment]
  end
end
