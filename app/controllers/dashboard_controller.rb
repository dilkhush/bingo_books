class DashboardController < ApplicationController
  def show
    render Pages::Dashboard::Show
  end
end