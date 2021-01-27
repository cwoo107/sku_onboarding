# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_27_154619) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "wines", force: :cascade do |t|
    t.string "sku"
    t.string "supplier"
    t.string "producer"
    t.string "cuvee"
    t.string "grape_variety"
    t.string "style"
    t.string "vintage"
    t.integer "btl_size"
    t.integer "btls_case"
    t.float "cost_case"
    t.string "appellation"
    t.string "app_ii"
    t.string "region"
    t.string "country"
    t.string "classification"
    t.float "abv"
    t.string "other"
    t.boolean "blend"
    t.json "blend_grapes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "par_level"
    t.integer "default"
    t.string "default_unit_type"
    t.boolean "status"
  end

end
