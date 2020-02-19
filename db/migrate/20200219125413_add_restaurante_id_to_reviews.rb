class AddRestauranteIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :restaurant, index: true
  end
end
