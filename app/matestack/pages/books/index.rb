class Pages::Books::Index < ApplicationPage
  def response
    div class: "container" do
      Components::Books::List.call
    end
  end
end