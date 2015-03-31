require "rails_helper"

feature "ToDo" do
  let(:description) { "Hey, look...  a ToDo!" }

  scenario "creation" do
    visit to_dos_path
    fill "to_do_description", with: description
    expect(page).to have_content(description)
  end
end
