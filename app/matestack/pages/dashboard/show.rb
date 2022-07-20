class Pages::Dashboard::Show < ApplicationPage
  def response
    div class: "container" do
      span id: "hello" do
        plain "hello world!"
      end
    end
  end
end