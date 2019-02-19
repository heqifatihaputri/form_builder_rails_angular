# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_02_12_081848) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contents", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "button_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "datetimes", force: :cascade do |t|
    t.string "label_name"
    t.boolean "required_field"
    t.boolean "half_width"
    t.string "display_type"
    t.string "date_format"
    t.boolean "time_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dropdowns", force: :cascade do |t|
    t.string "label_name"
    t.boolean "required_field"
    t.boolean "half_width"
    t.boolean "answer_public"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emails", force: :cascade do |t|
    t.string "label_name"
    t.boolean "required_field"
    t.boolean "half_width"
    t.boolean "mailchimp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "multiple_choices", force: :cascade do |t|
    t.string "label_name"
    t.boolean "required_field"
    t.boolean "half_width"
    t.string "alignment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paragraphs", force: :cascade do |t|
    t.string "label_name"
    t.boolean "required_field"
    t.boolean "half_width"
    t.boolean "limit_char"
    t.string "input_height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_dropdowns", force: :cascade do |t|
    t.string "choice_name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_multiple_choices", force: :cascade do |t|
    t.string "choice_name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "texts", force: :cascade do |t|
    t.string "label_name"
    t.boolean "required_field"
    t.boolean "half_width"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
