require "acceptance_helper"

describe "Anasayfa" do

  it "çalışıyor" do
    visit "/"
    current_path.must_equal "/"
    page.must_have_content 'Anasayfa'
  end

end
