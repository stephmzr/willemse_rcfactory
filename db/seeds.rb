# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Users
User.create(email: "gregoire.dubelloy@gmail.com", password: "password", password_confirmation: "password")

#RechercheClient
RechercheClient.create(ct_num: "012345", ct_type: 0, ct_classement: "Gueny Bernard", ct_adresse: "8 impasse beguin",
                       ct_codepostal: "72000", ct_ville: "Le Mans", ct_email: "801215259@cwill.fr",
                       ct_telephone: "0243248856")
RechercheClient.create(ct_num: "012346", ct_type: 1, ct_classement: "Drouet Pamela", ct_adresse: "13 rue des ecoles",
                       ct_codepostal: "17330", ct_ville: "doeuil sur le mignon", ct_email: "pameloche@hotmail.fr",
                       ct_telephone: "+33 6 50 75 51 25")

#FicheClient
FicheClient.create(ct_num: "012345", ct_intitule: "Monsieur", ct_civilite: "M", ct_nom: "Gueny",
                   ct_prenom: "Bernard", ct_adresse: "8 impasse beguin", ct_complement: "",
                   ct_codepostal: "72000", ct_ville: "Le Mans", ct_pays: "France",
                   ct_email: "801215259@cwill.fr", ct_telephone: "0243248856", ct_telportable: "",
                   solde_cagnotte: 2970)
FicheClient.create(ct_num: "012346", ct_intitule: "Madame", ct_civilite: "Mme", ct_nom: "Drouet",
                   ct_prenom: "Pamela", ct_adresse: "13 rue des ecoles", ct_complement: "",
                   ct_codepostal: "17330", ct_ville: "doeuil sur le mignon", ct_pays: "France",
                   ct_email: "pameloche@hotmail.fr", ct_telephone: "", ct_telportable: "+33 6 50 75 51 25",
                   solde_cagnotte: 1898)

#ListeDocument
ListeDocument.create(ct_num: "012345", ca_num: "Web", s_intitule: "N Pièce", do_piece: "C00073314",
                     do_ref: "21386643", do_coord01: "epuise", do_totalht: 8.17, do_date: "2018-03-21",
                     do_statut: "Commande annulée", do_expedie: false, do_type: 1)
ListeDocument.create(ct_num: "012345", ca_num: "Web", s_intitule: "N Pièce", do_piece: "F00069546",
                     do_ref: "21386643", do_coord01: "", do_totalht: 45.4, do_date: "2018-04-04",
                     do_statut: "Facture comptabilisée", do_expedie: true, do_type: 7)
ListeDocument.create(ct_num: "012345", ca_num: "Catalogue", s_intitule: "N Pièce", do_piece: "C00114522",
                     do_ref: "21764972", do_coord01: "epuise", do_totalht: 9.08, do_date: "2018-04-26",
                     do_statut: "Commande annulée", do_expedie: false, do_type: 1)

#DetailCommande
DetailCommande.create(do_piece: "F00069546", do_ref: "21386643", do_date: "21/03/2018", ca_num: "Web",
                      montantttc: 98.4, do_valfrais: 6.4, do_statut: "Facture comptabilisée", urgent: "",
                      point_retrait_relais: "", societe_livraison: "", nom_livraison: "DAGORNE",
                      prenom_livraison: "DANIELLE", email_livraison: "8569663779@cwill.fr", telephone_livraison: "",
                      adresse_livraison: "LIEU DIT LE HENLIS", complement_livraison: "", code_postal_livraison: "56340",
                      ville_livraison: "PLOUHARNEL", pays_livraison: "France métropolitaine", code_avantage: "",
                      decagnottage: 0.0, date_expedition: "21/03/2018", numero_tracking: "00BA59XM",
                      lien_tracking: "http://www.gls-group.eu/276-I-PORTAL-WEB/content/GLS/FR01/FR/5004.htm?txtRefNo=00BA59XM&amp;txtAction=71000",
                      code_partenaire: "", motifs_rmbt_recl: "", motifs_retour: "")

#ContenuCommande
ContenuCommande.create(do_piece: "F00069546", ar_ref: "017300", dl_design: "25 Pommes de terre 'Osiris'",
                       dl_qte: 8, dl_puttc: 7.99, remise: 0, dl_montantttc: 63.92, ldf: "", code_statut: "Epuisé",
                       nomenclature: "")
ContenuCommande.create(do_piece: "F00069546", ar_ref: "011683", dl_design: "Echalote Lyska",
                       dl_qte: 1, dl_puttc: 17, remise: 10, dl_montantttc: 15.3, ldf: "", code_statut: "Epuisé",
                       nomenclature: "Nomenclature")
ContenuCommande.create(do_piece: "F00069546", ar_ref: "014130", dl_design: "Amaryllis rouge",
                       dl_qte: 1, dl_puttc: 6.99, remise: 0, dl_montantttc: 6.99, ldf: "", code_statut: "Epuisé",
                       nomenclature: "")