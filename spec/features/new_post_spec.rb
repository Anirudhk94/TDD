require 'rails_helper.rb'

feature "Create new post" do
  scenario "Creating a new post" do
  	# visit the root route
    visit '/'
    # Click on create post lin  
	click_link 'Create Post'
    # Redirect to new post page
    expect(page).to have_content 'New Post'
    # Enter the title and caption for the post
    fill_in 'Title', with: 'Title 1'
    fill_in 'Caption', with: 'Title 1 - Caption'
    # Click on the Create Post button
    click_button 'Create Post'  
    # Expect the page to have the content we submitted
    expect(page).to have_content 'Title 1'
	expect(page).to have_content 'Title 1 - Caption'
  end
end