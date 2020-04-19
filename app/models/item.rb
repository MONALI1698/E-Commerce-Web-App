# == Schema Information
#
# Table name: items
#
#  id          :bigint           not null, primary key
#  category    :string
#  description :string
#  name        :string
#  price       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint
#
# Indexes
#
#  index_items_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Item < ApplicationRecord
  has_one_attached :file


    belongs_to(
        :creator,
        class_name: 'User',
        foreign_key: 'user_id',
        inverse_of: :items
      )
end
