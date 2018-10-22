class AddUserAchievements < ActiveRecord::Migration[5.2]
  def change
    add_reference(:achievements, :user, { index: true, foreign_key: true })
  end
end
