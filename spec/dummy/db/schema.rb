# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_06_20_162859) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "purchase_purchases", force: :cascade do |t|
    t.integer "seller_id"
    t.integer "buyer_id"
    t.string "status"
    t.integer "products_id", array: true
    t.integer "quantities", array: true
    t.integer "prices", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prices"], name: "index_purchase_purchases_on_prices", using: :gin
    t.index ["products_id"], name: "index_purchase_purchases_on_products_id", using: :gin
    t.index ["quantities"], name: "index_purchase_purchases_on_quantities", using: :gin
  end

end
