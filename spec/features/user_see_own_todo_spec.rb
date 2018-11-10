require "rails_helper"

feature "Users see own todos" do
  scenario "doesn't see others todos" do

    Todo.create!(title: "Buy milk", email: "someelse@example.com")
    sign_in_as "someoneelse@example.com"
    expect(page).not_to have_css '.todos li', text: "Buy Milk"
  end
end
