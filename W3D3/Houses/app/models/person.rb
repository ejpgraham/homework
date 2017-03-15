# create_table "people", force: :cascade do |t|
#   t.string   "name",       null: false
#   t.integer  "house_id"
#   t.datetime "created_at"
#   t.datetime "updated_at"
# end

class Person < ActiveRecord::Base
  validates :name, :house_id, presence: true

  belongs_to(
    :house,
    class_name: "House",
    primary_key: :id,
    foreign_key: :house_id
    )
end
