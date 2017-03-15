# create_table "houses", force: :cascade do |t|
#   t.integer  "address",    null: false
#   t.datetime "created_at"
#   t.datetime "updated_at"
# end

class House < ActiveRecord::Base
  validates :address, presence: true

  has_many(
    :residents,
   primary_key: :id,
   foreign_key: :house_id,
   class_name: "Person"
   )
end
