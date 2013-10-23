require "nesta/app"

module Nesta
  class App
    set :slim, { :format => :html5 }

    Encoding.default_external = 'utf-8'

    set :protection, :except => [:json_csrf]
    Pony.options = { from: 'takip@test.com', to: 'ysgp@test.com', via: :smtp, via_options: { host: 'localhost', port:1025 } }
    post '/iletisim/:subject' do |subject|
      Pony.mail(
        subject: "#{subject}, #{params[:name]} #{params[:lastname]}",
        html_body: slim(:"forms/email", layout: false, locals: { params: params })
      )
    end

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
