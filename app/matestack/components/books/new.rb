class Components::Books::New < Matestack::Ui::Component

  required :book

  def response
    matestack_form form_config do
      bs_form_input key: :title, type: :text, label: 'Title'
      bs_form_textarea key: :description, label: 'Description'
      bs_form_input key: :price, type: :number, label: 'Price' 
      bs_form_submit type: :submit
    end

    toggle show_on: "submitted", hide_after: 5000 do
      span class: "some-success-styling", text: "Yeah! {{ vc.event.data.message }}"
    end
    toggle show_on: "failed", hide_after: 5000 do
      span class: "some-error-styling", text: "Damn! {{ vc.event.data.message }}"
    end
  end

  private
    def form_config
      {
        for: book,
        path: books_path,
        method: :post,
        success: {
          emit: "submitted"
        },
        failure: {
          emit: "failed"
        }
      }
    end

    def book
      context.book
    end
end
