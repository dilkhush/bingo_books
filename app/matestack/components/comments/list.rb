class Components::Comments::List < Matestack::Ui::VueJsComponent

  required :book_id

  vue_name "comments-list-component"

  def response
    div class: "comments-list-root-element" do
      div 'v-for': 'comment in vc.comments' do
        bs_card title: "{{comment.body}}"
      end
    end
  end

  def vue_props
    {
      book_id: context.book_id
    }
  end
end
