require "nesta/app"
require "pony"

module Nesta
  module View
    module Helpers
      def articles_in_category(category, count = 8)
        articles = Nesta::Page.find_articles.select{ |p| p.metadata('categories').include?(category) }
        return articles[0..count - 1]
      end
    end
  end

  class App
    set :slim, { :format => :html5 }

    Encoding.default_external = 'utf-8'

    set :protection, :except => [:json_csrf]
    Pony.options = {
      to:   ENV['EMAIL_TO'],
      via: :smtp,
      via_options: {
        user_name:            ENV['SMTP_USER'],
        password:             ENV['SMTP_PASSWORD'],

        address:              'smtp.gmail.com',
        port:                 '587',
        enable_starttls_auto: true,
        authentication:       :plain,
        domain:               'localhost.localdomain'

      }
    }

    post '/iletisim/:subject' do |subject|
      mail_data = params.reject!{ |k| k == 'splat' || k == 'captures' }
      Pony.mail(
        subject: "#{subject}, #{params['Isim']} #{params['Soyisim']}",
        from: "Website",
        html_body: slim(:"forms/email", layout: false, locals: { params: mail_data })
      )
      slim :message_sent
    end

    get '/' do
      pass if request.referrer.to_s.include?(request.host)
      redirect '/soma'
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
