require "acceptance_helper"

describe "yapilar" do

  it "ara bulucu" do
    visit "/yapilar/ara-bulucu"
    current_path.must_equal "/yapilar/ara-bulucu"
    page.must_have_content('Ara Bulucu')
  end

  it "çalışma grupları" do
    visit "/yapilar/calisma-gruplari"
    current_path.must_equal "/yapilar/calisma-gruplari"
    page.must_have_content('Çalışma Grupları')
  end

  it "danışma kurulu" do
    visit "/yapilar/danisma-kurulu"
    current_path.must_equal "/yapilar/danisma-kurulu"
    page.must_have_content('Danışma Kurulu')
  end

  it "index" do
    visit "/yapilar"
    current_path.must_equal "/yapilar"
    page.must_have_content('Yapılar')
  end

  it "meclisler" do
    visit "/yapilar/meclisler"
    current_path.must_equal "/yapilar/meclisler"
    page.must_have_content('Meclisler')
  end

  it "myk" do
    visit "/yapilar/myk"
    current_path.must_equal "/yapilar/myk"
    page.must_have_content('MYK')
  end

  it "pm" do
    visit "/yapilar/pm"
    current_path.must_equal "/yapilar/pm"
    page.must_have_content('PM')
  end

end
