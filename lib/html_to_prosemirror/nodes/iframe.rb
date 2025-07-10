module HtmlToProsemirror
  module Nodes
    class Iframe < Node

      def matching
        @node.name == 'iframe'
      end

      def get_type
        return nil unless matching

        src = @node.attribute('src')&.value
        return 'iframe' if src.blank?

        if src.match?(/(youtube\.com|youtu\.be|vimeo\.com)/)
          'video'
        else
          'iframe'
        end
      end

      def data
        {
          type: get_type,
          attrs: {
            src: @node.attribute('src').value,
            width: @node.attribute('width')&.value,
            height: @node.attribute('height')&.value,
            title: @node.attribute('title')&.value,
          }
        }
      end
    end
  end
end
