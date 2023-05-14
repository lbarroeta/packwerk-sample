# frozen_string_literal: true

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

ActiveRecord::Schema[7.0].define(version: 20_230_218_055_852) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'action_text_rich_texts', force: :cascade do |t|
    t.string 'name', null: false
    t.text 'body'
    t.string 'record_type', null: false
    t.bigint 'record_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[record_type record_id name], name: 'index_action_text_rich_texts_uniqueness', unique: true
  end

  create_table 'active_storage_attachments', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'record_type', null: false
    t.bigint 'record_id', null: false
    t.bigint 'blob_id', null: false
    t.datetime 'created_at', precision: nil, null: false
    t.index ['blob_id'], name: 'index_active_storage_attachments_on_blob_id'
    t.index %w[record_type record_id name blob_id], name: 'index_active_storage_attachments_uniqueness',
                                                    unique: true
  end

  create_table 'active_storage_blobs', force: :cascade do |t|
    t.string 'key', null: false
    t.string 'filename', null: false
    t.string 'content_type'
    t.text 'metadata'
    t.string 'service_name', null: false
    t.bigint 'byte_size', null: false
    t.string 'checksum'
    t.datetime 'created_at', precision: nil, null: false
    t.index ['key'], name: 'index_active_storage_blobs_on_key', unique: true
  end

  create_table 'active_storage_variant_records', force: :cascade do |t|
    t.bigint 'blob_id', null: false
    t.string 'variation_digest', null: false
    t.index %w[blob_id variation_digest], name: 'index_active_storage_variant_records_uniqueness', unique: true
  end

  create_table 'customer_addresses', force: :cascade do |t|
    t.bigint 'customer_id'
    t.string 'country'
    t.string 'state'
    t.string 'city'
    t.string 'address'
    t.float 'latitude'
    t.float 'longitude'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['address'], name: 'index_customer_addresses_on_address'
    t.index ['city'], name: 'index_customer_addresses_on_city'
    t.index ['country'], name: 'index_customer_addresses_on_country'
    t.index ['latitude'], name: 'index_customer_addresses_on_latitude'
    t.index ['longitude'], name: 'index_customer_addresses_on_longitude'
    t.index ['state'], name: 'index_customer_addresses_on_state'
  end

  create_table 'customer_contacts', force: :cascade do |t|
    t.bigint 'customer_id'
    t.string 'phone'
    t.string 'email'
    t.string 'whatsapp'
    t.string 'twitter'
    t.string 'instagram'
    t.string 'facebook'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[customer_id email], name: 'index_customer_contacts_on_customer_id_and_email', unique: true
    t.index %w[customer_id phone], name: 'index_customer_contacts_on_customer_id_and_phone', unique: true
    t.index %w[customer_id whatsapp], name: 'index_customer_contacts_on_customer_id_and_whatsapp', unique: true
  end

  create_table 'customer_users', force: :cascade do |t|
    t.bigint 'customer_id'
    t.bigint 'user_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[customer_id user_id], name: 'index_customer_users_on_customer_id_and_user_id', unique: true
  end

  create_table 'customers', force: :cascade do |t|
    t.string 'name'
    t.string 'status'
    t.string 'customer_type'
    t.string 'identifier'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['customer_type'], name: 'index_customers_on_customer_type'
    t.index ['identifier'], name: 'index_customers_on_identifier'
    t.index ['name'], name: 'index_customers_on_name', unique: true
    t.index ['status'], name: 'index_customers_on_status'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'first_name'
    t.string 'last_name'
    t.string 'email'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.datetime 'discarded_at', precision: nil
    t.string 'crypted_password'
    t.string 'salt'
    t.string 'role'
    t.string 'status'
    t.index ['discarded_at'], name: 'index_users_on_discarded_at'
  end

  add_foreign_key 'active_storage_attachments', 'active_storage_blobs', column: 'blob_id'
  add_foreign_key 'active_storage_variant_records', 'active_storage_blobs', column: 'blob_id'
end
