class Components::Books::List < Matestack::Ui::Component

  required :books

  def response
    bs_smart_collection collection_config
  end

  private

    def collection_config
      {
        id: 'books',
        items: books,
        paginate: 10,
        rerender_on: 'success',
        columns: {
          id: 'ID',
          title: {
            heading: 'Title'
          },
          price: {
            heading: 'Price'
          },
          description: {
            heading: 'Description'
          }
        },
        filters: {
          title: {
            placeholder: 'Filter by Title',
            match: :starts_with,
          }
        },
        slots: {
          table_item_actions: method(:table_item_actions)
        }
      }
    end

    def books
      context.books
    end

    def table_item_actions(book)
      transition path: book_path(book), delay: 300 do
        bs_btn outline: true, size: :sm, variant: :primary do
          bs_icon name: 'arrow-right', size: 20
        end
      end

      action book_delete_action_config(book) do
        bs_btn outline: true, size: :sm, variant: :danger, class: "m-1" do
          bs_icon name: 'trash2', size: 20
        end
      end
    end

    def book_delete_action_config(book)
      {
        method: :delete,
        path: book_path(id: book.id),
        confirm: true,
        success: {
          emit: "success"
        }
      }
    end
end