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

ActiveRecord::Schema.define(version: 20170922154718) do

  create_table "courts", force: :cascade do |t|
    t.string "nombre"
    t.string "observacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_types", force: :cascade do |t|
    t.string "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "desc"
    t.integer "employee_type_id"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_type_id"], name: "index_employees_on_employee_type_id"
    t.index ["person_id"], name: "index_employees_on_person_id"
  end

  create_table "occupation_courts", force: :cascade do |t|
    t.datetime "dia_hora_inicio"
    t.datetime "dia_hora_fin"
    t.string "obsv"
    t.integer "court_id"
    t.integer "partner_id"
    t.integer "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "importe"
    t.boolean "pagado"
    t.index ["court_id"], name: "index_occupation_courts_on_court_id"
    t.index ["employee_id"], name: "index_occupation_courts_on_employee_id"
    t.index ["partner_id"], name: "index_occupation_courts_on_partner_id"
  end

  create_table "partner_states", force: :cascade do |t|
    t.string "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "partners", force: :cascade do |t|
    t.string "desc"
    t.integer "partner_state_id"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["partner_state_id"], name: "index_partners_on_partner_state_id"
    t.index ["person_id"], name: "index_partners_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "ape_nombre"
    t.bigint "dni_cuil"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
