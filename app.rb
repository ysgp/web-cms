module Nesta
  class App
    set :slim, { :format => :html5 }

    get '*' do
      set_common_variables
      parts = params[:splat].map { |p| p.sub(/\/$/, '') }
      @page = Nesta::Page.find_by_path(File.join(parts))
      raise Sinatra::NotFound if @page.nil?
      @title = @page.title
      set_from_page(:description, :keywords)
      cache slim(@page.template, :layout => @page.layout)
    end

    not_found do
      set_common_variables
      slim(:not_found)
    end

    error do
      set_common_variables
      slim(:error)
    end unless Nesta::App.development?
  end


  module Overrides
    module Renderers
      def slim(template, options = {}, locals = {})
        defaults, engine = Overrides.render_options(template, :slim)
        super(template, defaults.merge(options), locals)
      end
    end
  end

end
