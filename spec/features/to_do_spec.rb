require "rails_helper"

feature "ToDo" do
  let(:description) { "Hey, look...  a ToDo!" }

  scenario "creation" do
    visit to_dos_path
    fill_in "to_do_description", with: description
    click_button("Submit")
    expect(page).to have_content(description)
  end

  scenario "deletion" do
    to_do = Fabricate(:to_do, description: description)
    visit to_dos_path
    expect(page).to have_content(description)
    within("#to_do_#{to_do.id}") {
      click_link("del")
    }
    expect(page).not_to have_content(description)
  end
end
