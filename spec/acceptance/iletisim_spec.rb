require "acceptance_helper"

describe "iletişim" do

  it "index" do
    visit "/iletisim/"
    current_path.must_equal "/iletisim"
    page.must_have_content('İletişim')
  end

  it "bize ulaşın" do
    visit "/iletisim/bize-ulasin"
    current_path.must_equal "/iletisim/bize-ulasin"
    page.must_have_content('Bize Ulaşın')
  end

  it "mobil aidat" do
    visit "/iletisim/mobil-aidat"
    current_path.must_equal "/iletisim/mobil-aidat"
    page.must_have_content('Mobil Aidat')
  end

  it "takip etmek istiyorum" do
    visit "/iletisim/takip-etmek-istiyorum"
    current_path.must_equal "/iletisim/takip-etmek-istiyorum"
    page.must_have_content('Takip Etmek İstiyorum')
  end

  it "üye olmak istiyorum" do
    visit "/iletisim/uye-olmak-istiyorum"
    current_path.must_equal "/iletisim/uye-olmak-istiyorum"
    page.must_have_content('Üyelik Formu')
  end

end
