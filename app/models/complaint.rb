class Complaint < ApplicationRecord
has_many :complaints_to_answers
has_many :complaint_answers, through: :complaints_to_answers, dependent: :destroy

belongs_to :interaction

has_many :complaint_free_answers, dependent: :destroy
has_many :complaint_articles, dependent: :destroy

attr_accessor :total_reclam
attr_accessor :client_name
attr_accessor :refund_type

enum kind: {
    defraichi: 0,
    manquant: 1,
    reprise_moins_8_mois: 2,
    reprise_plus_8_mois: 3,
    non_recue: 4,
    refus: 5,
    inversion: 6,
    casse_horticole: 7,
    casse_non_horticole: 8,
    non_conforme: 9,
    rapide: 10,
    chgmt_date_livraison: 11,
    chgmt_addresse_livraison: 12,
    annul_commande: 13,
    facture: 14,
    desabo_mailing: 15,
    conseils_hortic: 16,
    renseign_pour_commande: 17,
    dfo: 18,
    vente_privee: 19,
    marketplace: 20,
    commande_non_trouvable: 21,
    dmde_partenariat: 22
}

enum contact_method: {
    telephone: 0,
    email: 1,
    facebook: 2,
    amazon: 3,
    trustpilot: 4,
    courrier: 5,
    rc: 6,
    fevad: 7
}

enum mode: {
    cic: 0,
    cheque: 1,
    paypal: 2,
    mp: 3,
    vp: 4,
    rien: 5,
    cagnotte: 6
}

enum complaint_status: {
    open: 0,
    ongoing: 1,
    closed: 2
}
end
