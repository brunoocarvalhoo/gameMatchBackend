class RefreshController < ApplicationController
  before_action :authorize_refresh_by_acess_request!

  def create
    session = JWTSessions::Session.new(payload: claimless_payload, refreshs_by_access_allowed: true)
    tokens = session.refresh_by_access_allowed do
      raise JWTSessions::Errors::Unauthorized, 'Deu errado'
    end

    response.set_cookie(JWTSessions.access_cookie,
                        value: tokens[:access],
                        httponly: true,
                        secure: Rails.env.production?)

    render json: { csrf: tokens[:csrf] }
  end


end
