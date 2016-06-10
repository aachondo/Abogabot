# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160610083820) do

  create_table "causals", force: :cascade do |t|
    t.text     "des"
    t.text     "inciso"
    t.text     "articulo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "employees", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "rut"
    t.string   "nationality"
    t.date     "dob"
    t.string   "calle"
    t.string   "num"
    t.string   "comuna"
    t.string   "region"
    t.string   "salud"
    t.string   "afp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employers", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "personalidad"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "nombre_empresa"
    t.string   "rut"
    t.string   "calle"
    t.string   "num"
    t.string   "comuna"
    t.string   "region"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "dob"
  end

  create_table "plazo_fijo_contratos", force: :cascade do |t|
    t.string   "tipo"
    t.integer  "n_ejemplares"
    t.date     "fecha_fin"
    t.date     "fecha_inicio"
    t.integer  "sueldo"
    t.time     "afternoon_end"
    t.time     "afternoon_start"
    t.time     "morning_end"
    t.time     "morning_start"
    t.integer  "horas_semanales"
    t.string   "trabajo_de"
    t.date     "fecha_firma"
    t.string   "lugar"
    t.integer  "employer_id"
    t.integer  "employee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "dia_inicio"
    t.string   "dia_fin"
    t.string   "sent"
    t.string   "review"
  end

  create_table "terminacion_contratos", force: :cascade do |t|
    t.text     "hechos"
    t.integer  "causal_id"
    t.date     "fecha_termino"
    t.integer  "employer_id"
    t.integer  "employee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "review"
    t.string   "sent"
    t.string   "tipo"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "last_name"
    t.string   "first_name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
