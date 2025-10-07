module HtmlToProsemirror
  module Marks
    class Subscript < Mark

      def matching
        @node.name === 'sub'
      end

      def data
        {
          type: "subcript"
        }
      end
    end
  end
end
