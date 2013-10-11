require "acceptance_helper"

describe "basin odasi" do

  it "basın kiti" do
    visit "/basin-odasi/basin-kiti"
    current_path.must_equal "/basin-odasi/basin-kiti"
    page.must_have_content('Basın Kiti')
  end

  it "basında çıkanlar" do
    visit "/basin-odasi/basinda-cikanlar"
    current_path.must_equal "/basin-odasi/basinda-cikanlar"
    page.must_have_content('Basında Çıkanlar')
  end

  it "fotoğraflar" do
    visit "/basin-odasi/fotograflar"
    current_path.must_equal "/basin-odasi/fotograflar"
    page.must_have_content('Fotoğraflar')
  end

  it "index" do
    visit "/basin-odasi"
    current_path.must_equal "/basin-odasi"
    page.must_have_content('Basın Odası')
  end

  it "videolar" do
    visit "/basin-odasi/videolar"
    current_path.must_equal "/basin-odasi/videolar"
    page.must_have_content('Videolar')
  end


end
