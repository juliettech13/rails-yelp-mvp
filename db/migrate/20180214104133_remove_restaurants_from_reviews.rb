class RemoveRestaurantsFromReviews < ActiveRecord::Migration[5.1]
  def change
    remove_reference :reviews, :restaurants, foreign_key: true
  end
end
