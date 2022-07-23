class Components::Shared::Navbar < Matestack::Ui::Component
  def response
    # adding custom class to nav class attribute: "text-center"
    # bs_navbar theme: :light, brand: "Navbar", class: "text-center", items: [
    #     { path: "#", text: "Home"},
    #     { path: "#", text: "Contact"} ] do
    #       bs_btn "Login", variant: :outline_success, horizontal: :end
    #     end
    bs_navbar slots: { custom_items: method(:my_navbar) }, color: :primary, theme: :dark, stick_top: true
  end

  def my_navbar
    span "Navbar text with an inline element", class: "navbar-text"
  end
end
