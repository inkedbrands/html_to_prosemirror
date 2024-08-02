module HtmlToProsemirror
  module Nodes
    class Image < Node

      def matching
        @node.name === 'img'
      end

      def data
        {
          type: "image",
          src: @node.attribute('src').value
        }
      end
    end
  end
end
