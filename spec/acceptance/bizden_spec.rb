require "acceptance_helper"

describe "bizden" do

  it "index" do
    visit "/bizden"
    current_path.must_equal "/bizden"
    page.must_have_content( :h1, 'Bizden')
  end

  it "eş sözcüler" do
    visit "/bizden/es-sozculer"
    current_path.must_equal "/bizden/es-sozculer"
    page.must_have_content('Genel Eş Sözcülerimiz')
  end

  it "kuruluş bildirgesi" do
    visit "/bizden/kurulus-bildirgesi"
    current_path.must_equal "/bizden/kurulus-bildirgesi"
    page.must_have_content('Kuruluş Kongresi Sonuç Bildirgesi')
  end

  it "tarihçe" do
    visit "/bizden/tarihce"
    current_path.must_equal "/bizden/tarihce"
    page.must_have_content('Tarihçe')
  end

end
