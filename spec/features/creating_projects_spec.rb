require 'spec_helper'
require 'rails_helper'

feature 'Creating Projects' do
scenario "can create a project" do
visit '/'
click_link 'New Project'
fill_in 'Name', with: 'TextMate 2'
fill_in 'Description', with: 'A text-editor for OS X'
click_button 'Create Project'
expect(page).to have_content('Project has been created.')



end

scenario "can not create a project without a name" do
visit '/'
click_link 'New Project'
click_button 'Create Project'
expect(page).to have_content("Project has not been created.")
expect(page).to have_content("Name can't be blank")
end
end