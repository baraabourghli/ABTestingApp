class ApplicationController < ActionController::Base
  rescue_from ::Exception, :with => :render_error

  private

  def render_error
    render :json => { s: 1 }.to_json
  end

end
