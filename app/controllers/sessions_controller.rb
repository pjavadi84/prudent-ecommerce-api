class SessionsController < ApplicationController
  # Controller actions will be defined here
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    render json: resource, status: :ok
  end

  def respond_to_on_destroy
    head :no_content
end

