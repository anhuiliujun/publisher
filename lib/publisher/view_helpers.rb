module Publisher
  module ViewHelpers
    def include_publisher(host = nil)
      host = host || Publisher.host
      (javascript_tag "window.faye_url = '#{host}'") + (javascript_include_tag "#{host}.js")
    end
  end
end

ActionView::Base.send :include, Publisher::ViewHelpers if defined?(Rails)
