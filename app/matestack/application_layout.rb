class ApplicationLayout < Matestack::Ui::Layout
  def response
    bs_container size: :fluid do
      matestack_vue_js_app do
        main do
          Components::Shared::Navbar.call
          page_switch do
            yield
          end
        end
      end
    end
  end
end
