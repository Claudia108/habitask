require 'rails_helper'

RSpec.feature "Visitor can add tasks to cart" do
  scenario "they visit the index page and add a task" do
    create(:city_with_tasks)
    # When I visit any page with an item on it
    # I should see a link or button for "Add to Cart"
    # When I click "Add to cart" for that item
    # And I click a link or button to view cart
    # And my current path should be "/cart"
    # And I should see a small image, title, description and price for the item I just added
    # And there should be a "total" price for the cart that should be the sum of all items in the cart
  end
end