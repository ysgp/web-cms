require "acceptance_helper"

describe "belgeler" do

  it "index" do
    visit "/belgeler"
    current_path.must_equal "/belgeler"
    page.must_have_content('Belgeler')
  end

  it "kurumsal kimlik" do
    visit "/belgeler/kurumsal-kimlik"
    current_path.must_equal "/belgeler/kurumsal-kimlik"
    page.must_have_content('Kurumsal Kimlik')
  end

  it "myk kararları" do
    visit "/belgeler/myk-kararlari"
    current_path.must_equal "/belgeler/myk-kararlari"
    page.must_have_content('MYK Kararları')
  end

  it "pm kararları" do
    visit "/belgeler/pm-kararlari"
    current_path.must_equal "/belgeler/pm-kararlari"
    page.must_have_content('PM Kararları')
  end

  it "program" do
    visit "/belgeler/program"
    current_path.must_equal "/belgeler/program"
    page.must_have_content('Program')
  end

  it "tüzük" do
    visit "/belgeler/tuzuk"
    current_path.must_equal "/belgeler/tuzuk"
    page.must_have_content('Tüzük')
  end

  it "yönetmelik" do
    visit "/belgeler/yonetmelik"
    current_path.must_equal "/belgeler/yonetmelik"
    page.must_have_content('Yönetmelik')
  end

end
