class Components::Shared::Navbar < Matestack::Ui::Component
  def response
    bs_navbar slots: { custom_items: method(:bingo_navbar) }, color: :primary, theme: :dark, stick_top: true
  end

  private

    def bingo_navbar
      transition path: root_path, delay: 300 do
        bs_btn "Home", variant: :primary
      end
      transition path: books_path, delay: 300 do
        bs_btn "Books", variant: :info
      end
    end
end
