module HtmlToProsemirror
  module Marks
    class Superscript < Mark

      def matching
        @node.name === 'sup'
      end

      def data
        {
          type: "superscript"
        }
      end
    end
  end
end
