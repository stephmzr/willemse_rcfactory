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

ActiveRecord::Schema.define(version: 20190225095903) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "adminpack"

  create_table "attachments", force: :cascade do |t|
    t.integer "kind"
    t.string "file_fingerprint"
    t.bigint "interaction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "file_file_name"
    t.string "file_content_type"
    t.bigint "file_file_size"
    t.datetime "file_updated_at"
    t.index ["interaction_id"], name: "index_attachments_on_interaction_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "commentaires", force: :cascade do |t|
    t.string "auteur"
    t.string "contenu"
    t.integer "articles_id"
    t.index ["articles_id"], name: "index_commentaires_on_articles_id"
  end

  create_table "complaint_answers", force: :cascade do |t|
    t.string "text"
    t.integer "complaint_kind"
    t.integer "opinion"
    t.integer "question_number"
    t.integer "answer_number"
    t.string "extra_info"
    t.string "summary_text"
    t.integer "coef"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "complaint_articles", force: :cascade do |t|
    t.string "AR_Ref"
    t.string "DL_Design"
    t.integer "DL_QTE"
    t.float "DL_PUTTC"
    t.float "Remise"
    t.float "DL_MontantTTC"
    t.string "LDF"
    t.string "Code_statut"
    t.string "Nomenclature"
    t.boolean "selected"
    t.integer "action_type"
    t.float "action_amount"
    t.bigint "complaint_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "Date_Livraison"
    t.integer "number_selected"
    t.string "Livrabilite"
    t.index ["complaint_id"], name: "index_complaint_articles_on_complaint_id"
  end

  create_table "complaint_free_answers", force: :cascade do |t|
    t.string "answer_id"
    t.string "text"
    t.integer "opinion"
    t.bigint "complaint_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["complaint_id"], name: "index_complaint_free_answers_on_complaint_id"
  end

  create_table "complaints", force: :cascade do |t|
    t.integer "kind"
    t.integer "contact_method"
    t.string "answer_inputs", default: [], array: true
    t.bigint "interaction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "note"
    t.integer "mode"
    t.integer "action_status"
    t.string "error_message"
    t.integer "complaint_status"
    t.index ["interaction_id"], name: "index_complaints_on_interaction_id"
  end

  create_table "complaints_to_answers", force: :cascade do |t|
    t.bigint "complaint_answer_id"
    t.bigint "complaint_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["complaint_answer_id"], name: "index_complaints_to_answers_on_complaint_answer_id"
    t.index ["complaint_id"], name: "index_complaints_to_answers_on_complaint_id"
  end

  create_table "contenu_commandes", force: :cascade do |t|
    t.string "do_piece"
    t.string "ar_ref"
    t.string "dl_design"
    t.integer "dl_qte"
    t.float "dl_puttc"
    t.integer "remise"
    t.float "dl_montantttc"
    t.string "ldf"
    t.string "code_statut"
    t.string "nomenclature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detail_commandes", force: :cascade do |t|
    t.string "do_piece"
    t.string "do_ref"
    t.date "do_date"
    t.string "ca_num"
    t.float "montantttc"
    t.float "do_valfrais"
    t.string "do_statut"
    t.string "urgent"
    t.string "point_retrait_relais"
    t.string "societe_livraison"
    t.string "nom_livraison"
    t.string "prenom_livraison"
    t.string "email_livraison"
    t.string "telephone_livraison"
    t.string "adresse_livraison"
    t.string "complement_livraison"
    t.string "code_postal_livraison"
    t.string "ville_livraison"
    t.string "pays_livraison"
    t.string "code_avantage"
    t.float "decagnottage"
    t.date "date_expedition"
    t.string "numero_tracking"
    t.string "lien_tracking"
    t.string "code_partenaire"
    t.string "motifs_rmbt_recl"
    t.string "motifs_retour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fiche_clients", force: :cascade do |t|
    t.string "ct_num"
    t.string "ct_intitule"
    t.string "ct_civilite"
    t.string "ct_nom"
    t.string "ct_prenom"
    t.string "ct_adresse"
    t.string "ct_complement"
    t.string "ct_codepostal"
    t.string "ct_ville"
    t.string "ct_pays"
    t.string "ct_email"
    t.string "ct_telephone"
    t.string "ct_telportable"
    t.integer "solde_cagnotte"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interactions", force: :cascade do |t|
    t.string "ct_num"
    t.string "do_piece"
    t.string "do_type"
    t.integer "kind"
    t.date "date"
    t.string "contact"
    t.string "object"
    t.integer "status"
    t.integer "contact_ct_nb"
    t.string "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "action_status"
    t.string "error_message"
    t.float "suggested_cagnotte_amount"
  end

  create_table "liste_documents", force: :cascade do |t|
    t.string "ct_num"
    t.string "ca_num"
    t.string "s_intitule"
    t.string "do_piece"
    t.string "do_ref"
    t.string "do_coord01"
    t.float "do_totalht"
    t.date "do_date"
    t.string "do_statut"
    t.boolean "do_expedie"
    t.integer "do_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recherche_clients", force: :cascade do |t|
    t.string "ct_num"
    t.integer "ct_type"
    t.string "ct_classement"
    t.string "ct_adresse"
    t.string "ct_codepostal"
    t.string "ct_ville"
    t.string "ct_email"
    t.string "ct_telephone"
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
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "attachments", "interactions"
  add_foreign_key "complaint_articles", "complaints"
  add_foreign_key "complaint_free_answers", "complaints"
  add_foreign_key "complaints", "interactions"
  add_foreign_key "complaints_to_answers", "complaint_answers"
  add_foreign_key "complaints_to_answers", "complaints"
end
