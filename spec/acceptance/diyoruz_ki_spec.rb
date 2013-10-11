require "acceptance_helper"

describe "diyoruz-ki" do

  it "index" do
    visit "/diyoruz-ki"
    current_path.must_equal "/diyoruz-ki"
    page.must_have_content('Diyoruz Ki')
  end

  it "basın açıklamaları" do
    visit "/diyoruz-ki/basin-aciklamalari"
    current_path.must_equal "/diyoruz-ki/basin-aciklamalari"
    page.must_have_content('Basın Açıklamaları')
  end

  it "kampanyalar" do
    visit "/diyoruz-ki/kampanyalar"
    current_path.must_equal "/diyoruz-ki/kampanyalar"
    page.must_have_content 'Kampanyalar'
  end

end
