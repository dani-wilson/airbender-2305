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
    save_and_open_page
    expect(page).to have_content("Iroh, Zuko")
  end
end