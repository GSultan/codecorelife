class ChangeStarCountToInteger < ActiveRecord::Migration[5.0]
  def change
    change_column :reviews, :star_count, 'integer USING CAST(star_count AS integer)'
    
  end
end
