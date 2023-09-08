require "rails_helper"

RSpec.describe "the root page" do
  it "allows me to search for members of the Fire Nation and see their photo and details" do
    visit "/"

    expect(page).to have_button("Search For Members")

    select("Fire Nation", from: "nation", wait: 2)
    click_button "Search For Members"

    expect(current_path).to eq("/search")

    expect(page).to have_content("20 Members")
    expect(page).to have_content("Azula")
    expect(page).to have_content("Enemies: Iroh, Zuko, Kuei, Long Feng, Mai, Ty Lee, Ursa")
    expect(page).to have_content("Allies: Ozai, Zuko")
    expect(page).to have_content("Affiliations: Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
  end
end