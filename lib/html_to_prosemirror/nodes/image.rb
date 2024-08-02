module HtmlToProsemirror
  module Nodes
    class Image < Node

      def matching
        @node.name === 'img'
      end

      def data
        {
          type: "image",
          attrs: {
            src: @node.attribute('src').value,
            alt: @node.attribute('alt')&.value || '',
          }
        }
      end
    end
  end
end
