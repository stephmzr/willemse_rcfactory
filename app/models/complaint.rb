class Complaint < ApplicationRecord
has_many :complaints_to_answers
has_many :complaint_answers, through: :complaints_to_answers, dependent: :destroy

belongs_to :interaction

has_many :complaint_free_answers, dependent: :destroy
has_many :complaint_articles, dependent: :destroy

attr_accessor :total_reclam
attr_accessor :client_name
attr_accessor :refund_type

enum complaint_kind: {
    defraichi: 0,
    manquant: 1,
    casse_horticole: 2,
    casse_non_horticole: 3,
    non_conforme: 4,
    non_recue: 5,
    refus: 6,
    inversion: 7,
    reprise_plus_8_mois: 8,
    reprise_moins_8_mois: 9,
    rapide: 10,
    annul_commande: 11,
    chgmt_date_livraison: 12,
    chgmt_addresse_livraison: 13,
    commande_non_trouvable: 14,
    conseils_hortic: 15,
    facture: 16,
    dmde_partenariat: 17,
    desabo_mailing: 18,
    dfo: 19,
    marketplace: 20,
    renseign_pour_commande: 21,
    vente_privee: 22
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

enum souche: {
    AMAZON: 0,
    ApExpédRbtCB: 1,
    ApExpédRbtCHQ: 2,
    ApExpédRbtPP: 3,
    AvExpéRbtCB: 4,
    AvExpéRbtCHQ: 5,
    AvExpéRbtPP: 6, 
    BPFLO: 7,
    BPWIL: 8,
    Cagnot: 9,
    DEINDEAL: 10,
    FLORIMON: 11,
    GROUPON: 12,
    NPièce: 13,
    RC4: 14,
    SRPFLO: 15,
    SRPWIL: 16,
    VENTESEXCLUSIVES: 17,
    VPFLO: 18,
    VPWIL: 19
}

enum complaint_status: {
    open: 0,
    ongoing: 1,
    closed: 2
}
end
