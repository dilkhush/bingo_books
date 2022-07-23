class Pages::Dashboard::Show < ApplicationPage
  def response
    bs_container size: :fluid do
      Components::Shared::Navbar.call
      div class: "container" do
        bs_breadcrumb items: items, class: 'my-breadcrumb'
      end
    end
  end

  private

    def items
      [
        { path: root_path, text: 'Home' }
      ]
    end
end