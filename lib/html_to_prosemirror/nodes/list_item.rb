module HtmlToProsemirror
  module Nodes
    class ListItem < Node
      def initialize(dom_node)
        super(dom_node)
        @wrapper = { type: 'paragraph' }
      end

      def matching
        @node.name === 'li'
      end

      def data
        only_child_is_paragraph = (
          @node.children.count { |n| n.element? || n.text? } == 1 &&
            @node.children.first.name == 'p'
        )

        @wrapper = nil if only_child_is_paragraph

        {
          type: "list_item"
        }
      end
    end
  end
end
