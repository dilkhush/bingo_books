class ApplicationController < ActionController::Base
  include Matestack::Ui::Core::Helper
  matestack_layout ApplicationLayout
end
