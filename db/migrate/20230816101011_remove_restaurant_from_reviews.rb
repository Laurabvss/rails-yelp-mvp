class RemoveRestaurantFromReviews < ActiveRecord::Migration[7.0]
  def change
    remove_column :reviews, :restaurant
  end
end
