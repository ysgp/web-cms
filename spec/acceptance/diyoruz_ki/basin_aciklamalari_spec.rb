require 'acceptance_helper'

describe 'Diyoruz Ki', "Basın açıklamaları" do
  let(:app) { Nesta::App }

  Dir.glob("content/pages/diyoruz-ki/basin-aciklamalari/*.mdown").each do |mdown|

    describe "#{ File.basename(mdown, ".mdown") }" do
      it "works" do
        url = url_for mdown
        get url
        last_response.must_be :ok?
      end
    end

  end

end
