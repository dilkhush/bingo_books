class Pages::Dashboard::Show < ApplicationPage
  def response
    div class: "container" do
      h1 'Home page'
    end
  end
end