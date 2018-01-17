module HunkyDory
  module ApplicationHelper
    def render_markdown(text)
      options = {
        filter_html: true,
        link_attributes: { target: "_blank" }
      }

      extensions = {
        strikethrough: true
      }

      renderer = Redcarpet::Render::HTML.new(options)
      markdown = Redcarpet::Markdown.new(renderer, extensions)

      markdown.render(text).html_safe
    end
  end
end
