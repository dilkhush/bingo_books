import MatestackUiVueJs from "matestack-ui-vuejs";

const commentsListComponent = {
  mixins: [MatestackUiVueJs.componentMixin],
  template: MatestackUiVueJs.componentHelpers.inlineTemplate,
  data() {
    return {
      comments: []
    };
  },
  methods: {
    async getComments(book_id){
      const response = await fetch('/books/'+book_id+'/comments.json');
      let response_data = await response.json();
      this.comments = response_data;
    }
  },
  mounted() {
    this.getComments(this.props['book_id']);
    // MatestackUiVueJs.eventHub.$on("get-comments-event", this.getComments)
  },
  beforeUnmount() {
    MatestackUiVueJs.eventHub.$off("get-comments-event", this.getComments)
  }
}

export default commentsListComponent