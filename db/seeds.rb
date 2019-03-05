#Users
User.create(email: "admin@willemse.fr", password: "password", password_confirmation: "password")

#Answers
## Complaint Kind
defraichi = 0
manquant = 1
reprise_moins_8_mois = 2
reprise_plus_8_mois = 3
non_recue = 4
refus = 5
inversion = 6
casse_horticole = 7
casse_non_horticole = 8
non_conforme = 9

## Opinion
favorable = 0
partagee = 1
defavorable = 2
aucune = 3

## Défraîchi
ComplaintAnswer.create(text: "Oui", complaint_kind: defraichi, opinion: defavorable, question_number: 1,
                       extra_info: nil, summary_text: "Coutumier des réclamations", coef: 2, answer_number: 1)
ComplaintAnswer.create(text: "Partagé", complaint_kind: defraichi, opinion: partagee, question_number: 1,
                       extra_info: nil, summary_text: "Des réclamations dans le passé", coef: 2, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: defraichi, opinion: favorable, question_number: 1,
                       extra_info: nil, summary_text: "Pas un coutumier des réclamations", coef: 2, answer_number: 3)

ComplaintAnswer.create(text: "Oui, Ass + MV", complaint_kind: defraichi, opinion: favorable, question_number: 2,
                       extra_info: nil, summary_text: "Garantie Main verte", coef: 2, answer_number: 1)
ComplaintAnswer.create(text: "Avant 2018", complaint_kind: defraichi, opinion: partagee, question_number: 2,
                       extra_info: nil, summary_text: "Commande passée avant 2018, il n'y avait pas de garantie", coef: 2, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: defraichi, opinion: defavorable, question_number: 2,
                       extra_info: nil, summary_text: "Pas de garantie", coef: 2, answer_number: 3)
ComplaintAnswer.create(text: "Oui, Météo", complaint_kind: defraichi, opinion: favorable, question_number: 2,
                       extra_info: nil, summary_text: "Garantie Météo", coef: 2, answer_number: 4)

ComplaintAnswer.create(text: "Oui", complaint_kind: defraichi, opinion: favorable, question_number: 3,
                       extra_info: nil, summary_text: "Livraison 24/48h", coef: 2, answer_number: 1)
ComplaintAnswer.create(text: "Client Print", complaint_kind: defraichi, opinion: partagee, question_number: 3,
                       extra_info: "NB: il faut en profiter pour conseiller les clients de passer leur cde sur le web",
                       summary_text: "Client print ne peut pas choisir son mode de livraison", coef: 2, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: defraichi, opinion: defavorable, question_number: 3,
                       extra_info: nil, summary_text: "Livraison standard : non recommandée pour les plantes", coef: 2, answer_number: 3)

ComplaintAnswer.create(text: "Moins de 50€", complaint_kind: defraichi, opinion: defavorable, question_number: 4,
                       extra_info: "Attention impact de frais de port", summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "50 à 100€", complaint_kind: defraichi, opinion: partagee, question_number: 4,
                       extra_info: nil, summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Plus de 100€", complaint_kind: defraichi, opinion: favorable, question_number: 4,
                       extra_info: nil, summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Moins de 50% de la commande", complaint_kind: defraichi, opinion: favorable, question_number: 5,
                       extra_info: nil, summary_text: "Afficher le % de la reclamation sur la valeur totale de la commande", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "50% à 99% de la commande", complaint_kind: defraichi, opinion: partagee, question_number: 5,
                       extra_info: nil, summary_text: "Afficher le % de la reclamation sur la valeur totale de la commande", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "100% de la commande", complaint_kind: defraichi, opinion: defavorable, question_number: 5,
                       extra_info: nil, summary_text: "Afficher le % de la reclamation sur la valeur totale de la commande", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui", complaint_kind: defraichi, opinion: defavorable, question_number: 6,
                       extra_info: nil, summary_text: "Commande expédiée dans les délais", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Retard 1 sem", complaint_kind: defraichi, opinion: partagee, question_number: 6,
                       extra_info: nil, summary_text: "Commande expédiée avec xxx jours de retard", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Retard + 2 sem", complaint_kind: defraichi, opinion: favorable, question_number: 6,
                       extra_info: nil, summary_text: "Commande expédiée avec xxx jours de retard", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Nouveau client", complaint_kind: defraichi, opinion: favorable, question_number: 7,
                       extra_info: nil, summary_text: "Nouveau client", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Client fidèle avec un réclamation récente", complaint_kind: defraichi, opinion: partagee, question_number: 7,
                       extra_info: nil, summary_text: "Client fidèle avec une réclamation récente", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Client fidèle sans réclamation récente", complaint_kind: defraichi, opinion: defavorable, question_number: 7,
                       extra_info: nil, summary_text: "Client fidèle sans réclamation récente", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui", complaint_kind: defraichi, opinion: favorable, question_number: 8,
                       extra_info: nil, summary_text: "Contestation donnée au livreur", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Colis déposé", complaint_kind: defraichi, opinion: partagee, question_number: 8,
                       extra_info: nil, summary_text: "Le colis a été deposé, pas de contestation possible", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: defraichi, opinion: defavorable , question_number: 8,
                       extra_info: nil, summary_text: "Pas de contestation donné au livreur", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "< 72h", complaint_kind: defraichi, opinion: defavorable, question_number: 9,
                       extra_info: nil, summary_text: "Le transporteur a respecté les delais annoncés", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "72/96h", complaint_kind: defraichi, opinion: partagee, question_number: 9,
                       extra_info: nil, summary_text: "Le transporteur a livré avec un peu de retard", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "> 96h", complaint_kind: defraichi, opinion: favorable, question_number: 9,
                       extra_info: nil, summary_text: "Le transporteur n'a pas respecté les delais annoncés", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "+/- 5 jrs", complaint_kind: defraichi, opinion: defavorable, question_number: 9,
                       extra_info: nil, summary_text: "Le transporteur a respecté les delais annoncés", coef: 1, answer_number: 4)
ComplaintAnswer.create(text: "5 à 10 jrs", complaint_kind: defraichi, opinion: partagee, question_number: 9,
                       extra_info: nil, summary_text: "Le transporteur a livré avec un peu de retard", coef: 1, answer_number: 5)
ComplaintAnswer.create(text: "> 10 jrs", complaint_kind: defraichi, opinion: favorable, question_number: 9,
                       extra_info: nil, summary_text: "Le transporteur n'a pas respecté les delais annoncés", coef: 1, answer_number: 6)

ComplaintAnswer.create(text: "+/- 10 jrs", complaint_kind: defraichi, opinion: defavorable, question_number: 9,
                       extra_info: nil, summary_text: "Le transporteur a respecté les delais annoncés", coef: 1, answer_number: 7)
ComplaintAnswer.create(text: "10 à 15 jrs", complaint_kind: defraichi, opinion: partagee, question_number: 9,
                       extra_info: nil, summary_text: "Le transporteur a livré avec un peu de retard", coef: 1, answer_number: 8)
ComplaintAnswer.create(text: "> 15 jrs", complaint_kind: defraichi, opinion: favorable, question_number: 9,
                       extra_info: nil, summary_text: "Le transporteur n'a pas respecté les delais annoncés", coef: 1, answer_number: 9)

ComplaintAnswer.create(text: "A réception ou dans les 24h", complaint_kind: defraichi, opinion: favorable, question_number: 10,
                       extra_info: nil, summary_text: "Le problème est signalé rapidement", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Dans les 24/48h", complaint_kind: defraichi, opinion: partagee, question_number: 10,
                       extra_info: nil, summary_text: "Le problème est signalé moyennement rapidement", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "A-delà de 48h", complaint_kind: defraichi, opinion: defavorable, question_number: 10,
                       extra_info: nil, summary_text: "Le problème est signalé après 48h", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui", complaint_kind: defraichi, opinion: favorable, question_number: 11,
                       extra_info: nil, summary_text: "Photo du problème envoyée", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Non", complaint_kind: defraichi, opinion: defavorable, question_number: 11,
                       extra_info: nil, summary_text: "Pas de photos", coef: 1, answer_number: 2)

ComplaintAnswer.create(text: "A la réception ou dans les 24h", complaint_kind: defraichi, opinion: favorable, question_number: 12,
                       extra_info: nil, summary_text: "Photo adressée sous 24h", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Dans les 24/48h", complaint_kind: defraichi, opinion: partagee, question_number: 12,
                       extra_info: nil, summary_text: "Photo adressée sous 24h/48h", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "A-delà de 48h", complaint_kind: defraichi, opinion: defavorable, question_number: 12,
                       extra_info: nil, summary_text: "Photo adressée après 48h", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui", complaint_kind: defraichi, opinion: favorable, question_number: 13,
                       extra_info: "Ex :\n>> balcons terrasses(pétunia...)\n>>plantes légumes (tomates...)\n>>certaines vivaces (lavandes...)",
                       summary_text: "La réclamation porte sur des articles fragiles", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Partagé", complaint_kind: defraichi, opinion: partagee, question_number: 13,
                       extra_info: nil, summary_text: "Nous ne savons pas si les articles sont fragiles", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: defraichi, opinion: defavorable, question_number: 13,
                       extra_info: "A relier avec le mode de livraison (ok 24/48h, ko Eco etc)",
                       summary_text: "La réclamation ne porte pas sur des articles fragiles", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui (prix conséquents)", complaint_kind: defraichi, opinion: favorable, question_number: 14,
                       extra_info: nil, summary_text: "Des articles à prix conséquents ont été commandés mais aucune réclamation n'est demandée",
                       coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Oui (petits prix)", complaint_kind: defraichi, opinion: partagee, question_number: 14,
                       extra_info: nil, summary_text: "D'autres articles ont été commandés mais aucune réclamation n'est demandée", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: defraichi, opinion: defavorable, question_number: 14,
                       extra_info: nil, summary_text: "Le client porte réclamation sur tous les articles périssables", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui", complaint_kind: defraichi, opinion: favorable, question_number: 15,
                       extra_info: nil, summary_text: "Il y a beaucoup de réclamations sur ces références d'articles ", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Partagé", complaint_kind: defraichi, opinion: partagee, question_number: 15,
                       extra_info: nil, summary_text: "Nous ne connaissons pas le nombre de réclamations sur ces références d'articles", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: defraichi, opinion: defavorable, question_number: 15,
                       extra_info: nil, summary_text: "Il y a peu de réclamations sur ces références d'articles ", coef: 1, answer_number: 3)

## Manquant
ComplaintAnswer.create(text: "Oui", complaint_kind: manquant, opinion: defavorable, question_number: 1,
                       extra_info: nil, summary_text: "Coutumier des réclamations", coef: 2, answer_number: 1)
ComplaintAnswer.create(text: "Partagé", complaint_kind: manquant, opinion: partagee, question_number: 1,
                       extra_info: nil, summary_text: "Des reclamations dans le passé", coef: 2, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: manquant, opinion: favorable, question_number: 1,
                       extra_info: nil, summary_text: "Pas un coutumier des réclamations", coef: 2, answer_number: 3)

ComplaintAnswer.create(text: "Moins de 50€", complaint_kind: manquant, opinion: defavorable, question_number: 2,
                       extra_info: "Attention impact de frais de port", summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "50 à 100€", complaint_kind: manquant, opinion: partagee, question_number: 2,
                       extra_info: nil, summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Plus de 100€", complaint_kind: manquant, opinion: favorable, question_number: 2,
                       extra_info: nil, summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Moins de 50% de la commande", complaint_kind: manquant, opinion: favorable, question_number: 3,
                       extra_info: nil, summary_text: "Afficher le % de la reclamation sur la valeur totale de la commande", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "50% à 99% de la commande", complaint_kind: manquant, opinion: partagee, question_number: 3,
                       extra_info: nil, summary_text: "Afficher le % de la reclamation sur la valeur totale de la commande", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "100% de la commande", complaint_kind: manquant, opinion: defavorable, question_number: 3,
                       extra_info: nil, summary_text: "Afficher le % de la reclamation sur la valeur totale de la commande", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui", complaint_kind: manquant, opinion: favorable, question_number: 4,
                       extra_info: nil, summary_text: "Contestation donnée au livreur", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Colis déposé", complaint_kind: manquant, opinion: partagee, question_number: 4,
                       extra_info: nil, summary_text: "Le colis a été deposé, pas de contestation possible", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: manquant, opinion: defavorable , question_number: 4,
                       extra_info: nil, summary_text: "Pas de contestation donné au livreur", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui, Ass + MV", complaint_kind: manquant, opinion: favorable, question_number: 5,
                      extra_info: nil, summary_text: "Garantie Main verte", coef: 2, answer_number: 1)
ComplaintAnswer.create(text: "Avant 2018", complaint_kind: manquant, opinion: partagee, question_number: 5,
                       extra_info: nil, summary_text: "Commande passée avant 2018, il n'y avait pas de garantie", coef: 2, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: manquant, opinion: defavorable, question_number: 5,
                       extra_info: nil, summary_text: "Pas de garantie", coef: 2, answer_number: 3)
ComplaintAnswer.create(text: "Oui, Météo", complaint_kind: manquant, opinion: favorable, question_number: 5,
                       extra_info: nil, summary_text: "Garantie Météo", coef: 2, answer_number: 4)

ComplaintAnswer.create(text: "Oui", complaint_kind: manquant, opinion: favorable, question_number: 6,
                       extra_info: nil, summary_text: "Livraison 24/48h", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Client Print", complaint_kind: manquant, opinion: partagee, question_number: 6,
                       extra_info: "NB: il faut en profiter pour conseiller les clients de passer leur cde sur le web",
                       summary_text: "Client print ne peut pas choisir son mode de livraison", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: manquant, opinion: defavorable, question_number: 6,
                       extra_info: nil, summary_text: "Livraison standard : non recommandée pour les plantes", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "A la réception ou dans les 24h", complaint_kind: manquant, opinion: favorable, question_number: 7,
                       extra_info: nil, summary_text: "Le problème est signalé rapidement", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Dans les 24/48h", complaint_kind: manquant, opinion: partagee, question_number: 7,
                       extra_info: nil, summary_text: "Le problème est signalé moyennement rapidement", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Au-delà de 48h", complaint_kind: manquant, opinion: defavorable, question_number: 7,
                       extra_info: nil, summary_text: "Le problème est signalé après 48h", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "< 72h", complaint_kind: manquant, opinion: defavorable, question_number: 8,
                       extra_info: nil, summary_text: "Le transporteur a respecté les delais annoncés", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "72/96h", complaint_kind: manquant, opinion: partagee, question_number: 8,
                       extra_info: nil, summary_text: "Le transporteur a livré avec un peu de retard", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "> 96h", complaint_kind: manquant, opinion: favorable, question_number: 8,
                       extra_info: nil, summary_text: "Le transporteur n'a pas respecté les delais annoncés", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "+/- 5 jrs", complaint_kind: manquant, opinion: defavorable, question_number: 8,
                       extra_info: nil, summary_text: "Le transporteur a respecté les delais annoncés", coef: 1, answer_number: 4)
ComplaintAnswer.create(text: "5 à 10 jrs", complaint_kind: manquant, opinion: partagee, question_number: 8,
                       extra_info: nil, summary_text: "Le transporteur a livré avec un peu de retard", coef: 1, answer_number: 5)
ComplaintAnswer.create(text: "> 10 jrs", complaint_kind: manquant, opinion: favorable, question_number: 8,
                       extra_info: nil, summary_text: "Le transporteur n'a pas respecté les delais annoncés", coef: 1, answer_number: 6)

ComplaintAnswer.create(text: "+/- 10 jrs", complaint_kind: manquant, opinion: defavorable, question_number: 8,
                       extra_info: nil, summary_text: "Le transporteur a respecté les delais annoncés", coef: 1, answer_number: 7)
ComplaintAnswer.create(text: "10 à 15 jrs", complaint_kind: manquant, opinion: partagee, question_number: 8,
                       extra_info: nil, summary_text: "Le transporteur a livré avec un peu de retard", coef: 1, answer_number: 8)
ComplaintAnswer.create(text: "> 15 jrs", complaint_kind: manquant, opinion: favorable, question_number: 8,
                       extra_info: nil, summary_text: "Le transporteur n'a pas respecté les delais annoncés", coef: 1, answer_number: 9)

## Oui et retard + de 2 semaines couleurs inversées
ComplaintAnswer.create(text: "Oui", complaint_kind: manquant, opinion: defavorable, question_number: 9,
                       extra_info: nil, summary_text: "Commande expédiée dans les délais", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Retard 1 sem", complaint_kind: manquant, opinion: partagee, question_number: 9,
                       extra_info: nil, summary_text: "Commande expédiée avec xxx jours de retard", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Retard + 2 sem", complaint_kind: manquant, opinion: favorable, question_number: 9,
                       extra_info: nil, summary_text: "Commande expédiée avec xxx jours de retard", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Nouveau client", complaint_kind: manquant, opinion: favorable, question_number: 10,
                       extra_info: nil, summary_text: "Nouveau client", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Client fidèle avec une réclamation récente", complaint_kind: manquant, opinion: partagee, question_number: 10,
                       extra_info: nil, summary_text: "Client fidèle avec une réclamation récente", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Client fidèle sans réclamation récente", complaint_kind: manquant, opinion: defavorable, question_number: 10,
                       extra_info: nil, summary_text: "Client fidèle sans réclamation récente", coef: 1, answer_number: 3)

## Reprise_moins_8_mois
ComplaintAnswer.create(text: "Oui", complaint_kind: reprise_moins_8_mois, opinion: defavorable, question_number: 1,
                       extra_info: nil, summary_text: "Coutumier des réclamations", coef: 2, answer_number: 1)
ComplaintAnswer.create(text: "Partagé", complaint_kind: reprise_moins_8_mois, opinion: partagee, question_number: 1,
                       extra_info: nil, summary_text: "Des reclamations dans le passé", coef: 2, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: reprise_moins_8_mois, opinion: favorable, question_number: 1,
                       extra_info: nil, summary_text: "Pas un coutumier des réclamations", coef: 2, answer_number: 3)

ComplaintAnswer.create(text: "Moins de 50€", complaint_kind: reprise_moins_8_mois, opinion: defavorable, question_number: 2,
                       extra_info: "Attention impact de frais de port", summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "50 à 100€", complaint_kind: reprise_moins_8_mois, opinion: partagee, question_number: 2,
                       extra_info: nil, summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Plus de 100€", complaint_kind: reprise_moins_8_mois, opinion: favorable, question_number: 2,
                       extra_info: nil, summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Moins de 50% de la commande", complaint_kind: reprise_moins_8_mois, opinion: favorable, question_number: 3,
                       extra_info: nil, summary_text: "Afficher le % de la reclamation sur la valeur totale de la commande", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "50% à 99% de la commande", complaint_kind: reprise_moins_8_mois, opinion: partagee, question_number: 3,
                       extra_info: nil, summary_text: "Afficher le % de la reclamation sur la valeur totale de la commande", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "100% de la commande", complaint_kind: reprise_moins_8_mois, opinion: defavorable, question_number: 3,
                       extra_info: nil, summary_text: "Afficher le % de la reclamation sur la valeur totale de la commande", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui, Ass + MV", complaint_kind: reprise_moins_8_mois, opinion: favorable, question_number: 4,
                       extra_info: nil, summary_text: "Garantie Main verte", coef: 2, answer_number: 1)
ComplaintAnswer.create(text: "Avant 2018", complaint_kind: reprise_moins_8_mois, opinion: partagee, question_number: 4,
                       extra_info: nil, summary_text: "Commande passée avant 2018, il n'y avait pas de garantie", coef: 2, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: reprise_moins_8_mois, opinion: defavorable, question_number: 4,
                       extra_info: nil, summary_text: "Pas de garantie", coef: 2, answer_number: 3)
ComplaintAnswer.create(text: "Oui, Météo", complaint_kind: reprise_moins_8_mois, opinion: favorable, question_number: 4,
                       extra_info: nil, summary_text: "Garantie Météo", coef: 2, answer_number: 4)

ComplaintAnswer.create(text: "Oui", complaint_kind: reprise_moins_8_mois, opinion: favorable, question_number: 5,
                       extra_info: nil, summary_text: "La période est propice à la reprise de la plante", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Partagé", complaint_kind: reprise_moins_8_mois, opinion: partagee, question_number: 5,
                       extra_info: nil, summary_text: "La période peut être propice à la reprise de la plante mais pas idéale", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: reprise_moins_8_mois, opinion: defavorable, question_number: 5,
                       extra_info: nil, summary_text: "La période n'est pas propice à la reprise de la plante", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui", complaint_kind: reprise_moins_8_mois, opinion: favorable, question_number: 6,
                       extra_info: nil, summary_text: "Il y a beaucoup de réclamations sur ces références d'articles ", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Partagé", complaint_kind: reprise_moins_8_mois, opinion: partagee, question_number: 6,
                       extra_info: nil, summary_text: "Nous ne connaissons pas le nombre de réclamations sur ces références d'articles", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: reprise_moins_8_mois, opinion: defavorable, question_number: 6,
                       extra_info: nil, summary_text: "Il y a peu de réclamations sur ces références d'artciles ", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui", complaint_kind: reprise_moins_8_mois, opinion: favorable, question_number: 7,
                       extra_info: nil, summary_text: "Une photo montre que le jardin est soigné et arrosé", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Partagé", complaint_kind: reprise_moins_8_mois, opinion: partagee, question_number: 7,
                       extra_info: nil, summary_text: "Une photo montre un jardin moyennement entretenu", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Pas de photo ou jardin pas soigné/arrosé", complaint_kind: reprise_moins_8_mois, opinion: defavorable, question_number: 7,
                       extra_info: nil, summary_text: "Une photo montre un jardin pas soigné (ou pas de photo)", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui", complaint_kind: reprise_moins_8_mois, opinion: favorable, question_number: 8,
                       extra_info: nil, summary_text: "Livraison 24/48", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Client Print", complaint_kind: reprise_moins_8_mois, opinion: partagee, question_number: 8,
                       extra_info: "NB: il faut en profiter pour conseiller les clients de passer leur cde sur le web",
                       summary_text: "Client print ne peut pas choisir son mode de livraison", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: reprise_moins_8_mois, opinion: defavorable, question_number: 8,
                       extra_info: nil, summary_text: "Livraison standard : non recommandée pour les plantes", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui", complaint_kind: reprise_moins_8_mois, opinion: defavorable, question_number: 9,
                       extra_info: nil, summary_text: "Commande expédiée dans les délais", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Retard 1 sem", complaint_kind: reprise_moins_8_mois, opinion: partagee, question_number: 9,
                       extra_info: nil, summary_text: "Commande expédiée avec xxx jours de retard", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Retard + 2 sem", complaint_kind: reprise_moins_8_mois, opinion: favorable, question_number: 9,
                       extra_info: nil, summary_text: "Commande expédiée avec xxx jours de retard", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Nouveau client", complaint_kind: reprise_moins_8_mois, opinion: favorable, question_number: 10,
                       extra_info: nil, summary_text: "Nouveau client", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Client fidèle avec un réclamation récente", complaint_kind: reprise_moins_8_mois, opinion: partagee, question_number: 10,
                       extra_info: nil, summary_text: "Client fidèle avec une réclamation récente", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Client fidèle sans réclamation récente", complaint_kind: reprise_moins_8_mois, opinion: defavorable, question_number: 10,
                       extra_info: nil, summary_text: "Client fidèle sans réclamation récente", coef: 1, answer_number: 3)

## Reprise_plus_8_mois
ComplaintAnswer.create(text: "Oui", complaint_kind: reprise_plus_8_mois, opinion: defavorable, question_number: 1,
                       extra_info: nil, summary_text: "Coutumier des réclamations", coef: 2, answer_number: 1)
ComplaintAnswer.create(text: "Partagé", complaint_kind: reprise_plus_8_mois, opinion: partagee, question_number: 1,
                       extra_info: nil, summary_text: "Des réclamations dans le passé", coef: 2, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: reprise_plus_8_mois, opinion: favorable, question_number: 1,
                       extra_info: nil, summary_text: "Pas un coutumier des réclamations", coef: 2, answer_number: 3)

ComplaintAnswer.create(text: "Moins de 50€", complaint_kind: reprise_plus_8_mois, opinion: defavorable, question_number: 2,
                       extra_info: "Attention impact de frais de port", summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "50 à 100€", complaint_kind: reprise_plus_8_mois, opinion: partagee, question_number: 2,
                       extra_info: nil, summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Plus de 100€", complaint_kind: reprise_plus_8_mois, opinion: favorable, question_number: 2,
                       extra_info: nil, summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Moins de 50% de la commande", complaint_kind: reprise_plus_8_mois, opinion: favorable, question_number: 3,
                       extra_info: nil, summary_text: "Afficher le % de la reclamation sur la valeur totale de la commande", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "50% à 99% de la commande", complaint_kind: reprise_plus_8_mois, opinion: partagee, question_number: 3,
                       extra_info: nil, summary_text: "Afficher le % de la reclamation sur la valeur totale de la commande", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "100% de la commande", complaint_kind: reprise_plus_8_mois, opinion: defavorable, question_number: 3,
                       extra_info: nil, summary_text: "Afficher le % de la reclamation sur la valeur totale de la commande", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui, Ass + MV", complaint_kind: reprise_plus_8_mois, opinion: favorable, question_number: 4,
                       extra_info: nil, summary_text: "Garantie Main verte", coef: 2, answer_number: 1)
ComplaintAnswer.create(text: "Avant 2018", complaint_kind: reprise_plus_8_mois, opinion: partagee, question_number: 4,
                       extra_info: nil, summary_text: "Commande passée avant 2018, il n'y a pas de garantie", coef: 2, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: reprise_plus_8_mois, opinion: defavorable, question_number: 4,
                       extra_info: nil, summary_text: "Pas de garantie", coef: 2, answer_number: 3)
ComplaintAnswer.create(text: "Oui, Météo", complaint_kind: reprise_plus_8_mois, opinion: favorable, question_number: 4,
                       extra_info: nil, summary_text: "Garantie Météo", coef: 2, answer_number: 4)

ComplaintAnswer.create(text: "Oui", complaint_kind: reprise_plus_8_mois, opinion: favorable, question_number: 5,
                       extra_info: nil, summary_text: "Il y a beaucoup de réclamations sur ces références d'articles ", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Un certain nombre mais article beaucoup vendu aussi", complaint_kind: reprise_plus_8_mois, opinion: partagee, question_number: 5,
                       extra_info: nil, summary_text: "Nous ne connaissons pas le nombre de réclamations sur ces références d'articles", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Pas particulièrement", complaint_kind: reprise_plus_8_mois, opinion: defavorable, question_number: 5,
                       extra_info: nil, summary_text: "Il y a peu de réclamations sur ces références d'articles ", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui", complaint_kind: reprise_plus_8_mois, opinion: favorable, question_number: 6,
                       extra_info: nil, summary_text: "Une photo montre que le jardin est soigné et arrosé", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Partagé", complaint_kind: reprise_plus_8_mois, opinion: partagee, question_number: 6,
                       extra_info: nil, summary_text: "Une photo montre un jardin moyennement entretenu", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Pas de photo ou jardin pas soigné/arrosé", complaint_kind: reprise_plus_8_mois, opinion: defavorable, question_number: 6,
                       extra_info: nil, summary_text: "Une photo montre un jardin pas soigné (ou pas de photo)", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Nouveau client", complaint_kind: reprise_plus_8_mois, opinion: favorable, question_number: 7,
                       extra_info: nil, summary_text: "Nouveau client", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Client fidèle avec un réclamation récente", complaint_kind: reprise_plus_8_mois, opinion: partagee, question_number: 7,
                       extra_info: nil, summary_text: "Client fidèle avec une réclamation récente", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Client fidèle sans réclamation récente", complaint_kind: reprise_plus_8_mois, opinion: defavorable, question_number: 7,
                       extra_info: nil, summary_text: "Client fidèle sans réclamation récente", coef: 1, answer_number: 3)

## Non_recue
ComplaintAnswer.create(text: "Oui", complaint_kind: non_recue, opinion: defavorable, question_number: 1,
                     extra_info: nil, summary_text: "Commande expédiée dans les délais", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Retard 1 sem", complaint_kind: non_recue, opinion: partagee, question_number: 1,
                       extra_info: nil, summary_text: "Commande expédiée avec xxx jours de retard", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Retard + 2 sem", complaint_kind: non_recue, opinion: favorable, question_number: 1,
                       extra_info: nil, summary_text: "Commande expédiée avec xxx jours de retard", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui, Ass + MV", complaint_kind: non_recue, opinion: favorable, question_number: 2,
                       extra_info: nil, summary_text: "Garantie Main verte", coef: 2, answer_number: 1)
ComplaintAnswer.create(text: "Avant 2018", complaint_kind: non_recue, opinion: partagee, question_number: 2,
                       extra_info: nil, summary_text: "Commande passée avant 2018, il n'y a pas de garantie", coef: 2, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: non_recue, opinion: defavorable, question_number: 2,
                       extra_info: nil, summary_text: "Pas de garantie", coef: 2, answer_number: 3)
ComplaintAnswer.create(text: "Oui, Météo", complaint_kind: non_recue, opinion: favorable, question_number: 2,
                       extra_info: nil, summary_text: "Garantie Météo", coef: 2, answer_number: 4)

ComplaintAnswer.create(text: "Moins de 50€", complaint_kind: non_recue, opinion: defavorable, question_number: 3,
                       extra_info: "Attention impact de frais de port", summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "50 à 100€", complaint_kind: non_recue, opinion: partagee, question_number: 3,
                       extra_info: nil, summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Plus de 100€", complaint_kind: non_recue, opinion: favorable, question_number: 3,
                       extra_info: nil, summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui", complaint_kind: non_recue, opinion: favorable, question_number: 4,
                       extra_info: nil, summary_text: "Livraison 24/48", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Client Print", complaint_kind: non_recue, opinion: partagee, question_number: 4,
                       extra_info: "NB: il faut en profiter pour conseiller les clients de passer leur cde sur le web",
                       summary_text: "Client print ne peut pas choisir son mode de livraison", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: non_recue, opinion: defavorable, question_number: 4,
                       extra_info: nil, summary_text: "Livraison standard : non recommandée pour les plantes", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Nouveau client", complaint_kind: non_recue, opinion: favorable, question_number: 5,
                       extra_info: nil, summary_text: "Nouveau client", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Client fidèle avec un réclamation récente", complaint_kind: non_recue, opinion: partagee, question_number: 5,
                       extra_info: nil, summary_text: "Client fidèle avec une réclamation récente", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Client fidèle sans réclamation récente", complaint_kind: non_recue, opinion: defavorable, question_number: 5,
                       extra_info: nil, summary_text: "Client fidèle sans réclamation récente", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Non", complaint_kind: non_recue, opinion: defavorable, question_number: 6,
                       extra_info: nil, summary_text: "Pas de numéro de tel et/ou email", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Oui", complaint_kind: non_recue, opinion: favorable, question_number: 6,
                       extra_info: nil, summary_text: "Numéro de tel et/ou email", coef: 1, answer_number: 2)

ComplaintAnswer.create(text: "Non", complaint_kind: non_recue, opinion: defavorable, question_number: 7,
                       extra_info: nil, summary_text: "Adresse de livraison incorrecte", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Oui", complaint_kind: non_recue, opinion: favorable, question_number: 7,
                       extra_info: nil, summary_text: "Adresse de livraison correcte", coef: 1, answer_number: 2)

ComplaintAnswer.create(text: "Non", complaint_kind: non_recue, opinion: defavorable, question_number: 8,
                       extra_info: nil, summary_text: "Client responsable de la non livraison", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Oui",  complaint_kind: non_recue, opinion: favorable, question_number: 8,
                       extra_info: nil, summary_text: "Client non responsable de la non livraison", coef: 1, answer_number: 2)

## Refus
ComplaintAnswer.create(text: "Oui", complaint_kind: refus, opinion: defavorable, question_number: 1,
                       extra_info: nil, summary_text: "Coutumier des réclamations", coef: 2, answer_number: 1)
ComplaintAnswer.create(text: "Partagé", complaint_kind: refus, opinion: partagee, question_number: 1,
                       extra_info: nil, summary_text: "Des réclamations dans le passé", coef: 2, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: refus, opinion: favorable, question_number: 1,
                       extra_info: nil, summary_text: "Pas un coutumier des réclamations", coef: 2, answer_number: 3)

ComplaintAnswer.create(text: "Oui, Ass + MV", complaint_kind: refus, opinion: favorable, question_number: 2,
                       extra_info: nil, summary_text: "Garantie Main verte", coef: 2, answer_number: 1)
ComplaintAnswer.create(text: "Avant 2018", complaint_kind: refus, opinion: partagee, question_number: 2,
                       extra_info: nil, summary_text: "Commande passée avant 2018, il n'y a pas de garantie", coef: 2, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: refus, opinion: defavorable, question_number: 2,
                       extra_info: nil, summary_text: "Pas de garantie", coef: 2, answer_number: 3)
ComplaintAnswer.create(text: "Oui, Météo", complaint_kind: refus, opinion: favorable, question_number: 2,
                       extra_info: nil, summary_text: "Garantie Météo", coef: 2, answer_number: 4)

ComplaintAnswer.create(text: "Oui", complaint_kind: refus, opinion: favorable, question_number: 3,
                       extra_info: nil, summary_text: "Livraison 24/48h", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Client Print", complaint_kind: refus, opinion: partagee, question_number: 3,
                       extra_info: "NB: il faut en profiter pour conseiller les clients de passer leur cde sur le web",
                       summary_text: "Client print ne peut pas choisir son mode de livraison", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: refus, opinion: defavorable, question_number: 3,
                       extra_info: nil, summary_text: "Livraison standard : non recommandée pour les plantes", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Moins de 50€", complaint_kind: refus, opinion: defavorable, question_number: 4,
                       extra_info: "Attention impact de frais de port", summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "50 à 100€", complaint_kind: refus, opinion: partagee, question_number: 4,
                       extra_info: nil, summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Plus de 100€", complaint_kind: refus, opinion: favorable, question_number: 4,
                       extra_info: nil, summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui", complaint_kind: refus, opinion: favorable, question_number: 5,
                       extra_info: nil, summary_text: "Le colis est endommagé", coef: 2, answer_number: 1)
ComplaintAnswer.create(text: "Non", complaint_kind: refus, opinion: defavorable, question_number: 5,
                       extra_info: nil, summary_text: "Le colis n'est pas endommagé", coef: 2, answer_number: 2)

ComplaintAnswer.create(text: "Oui", complaint_kind: refus, opinion: defavorable, question_number: 6,
                       extra_info: nil, summary_text: "Le client est coutumier des refusés", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Non", complaint_kind: refus, opinion: favorable, question_number: 6,
                       extra_info: nil, summary_text: "Le client n'est pas coutumier des refusés", coef: 1, answer_number: 2)

ComplaintAnswer.create(text: "< 72h", complaint_kind: refus, opinion: defavorable, question_number: 7,
                       extra_info: nil, summary_text: "Le transporteur a respecté les delais annoncés", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "72/96h", complaint_kind: refus, opinion: partagee, question_number: 7,
                       extra_info: nil, summary_text: "Le transporteur a livré avec un peu de retard", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "> 96h", complaint_kind: refus, opinion: favorable, question_number: 7,
                       extra_info: nil, summary_text: "Le transporteur n'a pas respecté les delais annoncés", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "+/- 5 jrs", complaint_kind: refus, opinion: defavorable, question_number: 7,
                       extra_info: nil, summary_text: "Le transporteur a respecté les delais annoncés", coef: 1, answer_number: 4)
ComplaintAnswer.create(text: "5 à 10 jrs", complaint_kind: refus, opinion: partagee, question_number: 7,
                       extra_info: nil, summary_text: "Le transporteur a livré avec un peu de retard", coef: 1, answer_number: 5)
ComplaintAnswer.create(text: "> 10 jrs", complaint_kind: refus, opinion: favorable, question_number: 7,
                       extra_info: nil, summary_text: "Le transporteur n'a pas respecté les delais annoncés", coef: 1, answer_number: 6)

ComplaintAnswer.create(text: "+/- 10 jrs", complaint_kind: refus, opinion: defavorable, question_number: 7,
                       extra_info: nil, summary_text: "Le transporteur a respecté les delais annoncés", coef: 1, answer_number: 7)
ComplaintAnswer.create(text: "10 à 15 jrs", complaint_kind: refus, opinion: partagee, question_number: 7,
                       extra_info: nil, summary_text: "Le transporteur a livré avec un peu de retard", coef: 1, answer_number: 8)
ComplaintAnswer.create(text: "> 15 jrs", complaint_kind: refus, opinion: favorable, question_number: 7,
                       extra_info: nil, summary_text: "Le transporteur n'a pas respecté les delais annoncés", coef: 1, answer_number: 9)

ComplaintAnswer.create(text: "A la réception ou dans les 24h", complaint_kind: refus, opinion: favorable, question_number: 8,
                       extra_info: nil, summary_text: "Le probleme est signalé rapidement", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Dans les 24/48h", complaint_kind: refus, opinion: partagee, question_number: 8,
                       extra_info: nil, summary_text: "Le probleme est signalé moyennement rapidement", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "A-delà de 48h", complaint_kind: refus, opinion: defavorable, question_number: 8,
                       extra_info: nil, summary_text: "Le probleme est signalé après 48h", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui", complaint_kind: refus, opinion: favorable, question_number: 9,
                       extra_info: nil, summary_text: "Les articles sont endommagé", coef: 2, answer_number: 1)
ComplaintAnswer.create(text: "Non", complaint_kind: refus, opinion: defavorable, question_number: 9,
                       extra_info: nil, summary_text: "Les articles ne sont pas endommagé", coef: 2, answer_number: 2)

ComplaintAnswer.create(text: "Oui", complaint_kind: refus, opinion: defavorable, question_number: 10,
                       extra_info: nil, summary_text: "Commande expédiée dans les délais", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Retard 1 sem", complaint_kind: refus, opinion: partagee, question_number: 10,
                       extra_info: nil, summary_text: "Commande expédiée avec xxx jours de retard", coef: 10, answer_number: 2)
ComplaintAnswer.create(text: "Retard + 2 sem", complaint_kind: refus, opinion: favorable, question_number: 10,
                       extra_info: nil, summary_text: "Commande expédiée avec xxx jours de retard", coef: 1, answer_number: 3)

## Inversion
ComplaintAnswer.create(text: "Oui", complaint_kind: inversion, opinion: defavorable, question_number: 1,
                       extra_info: nil, summary_text: "Coutumier des réclamations", coef: 2, answer_number: 1)
ComplaintAnswer.create(text: "Partagé", complaint_kind: inversion, opinion: partagee, question_number: 1,
                       extra_info: nil, summary_text: "Des reclamations dans le passé", coef: 2, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: inversion, opinion: favorable, question_number: 1,
                       extra_info: nil, summary_text: "Pas un coutumier des réclamations", coef: 2, answer_number: 3)

ComplaintAnswer.create(text: "A la réception ou dans les 24h", complaint_kind: inversion, opinion: favorable, question_number: 2,
                       extra_info: nil, summary_text: "Le probleme est signalé rapidement", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Dans les 24/48h", complaint_kind: inversion, opinion: partagee, question_number: 2,
                       extra_info: nil, summary_text: "Le probleme est signalé moyennement rapidement", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "A-delà de 48h", complaint_kind: inversion, opinion: defavorable, question_number: 2,
                       extra_info: nil, summary_text: "Le probleme est signalé après 48h", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui", complaint_kind: inversion, opinion: favorable, question_number: 3,
                       extra_info: nil, summary_text: "Une photo montre l'article reçu mais mais pas commandé", coef: 2, answer_number: 1)
ComplaintAnswer.create(text: "Non", complaint_kind: inversion, opinion: defavorable, question_number: 3,
                       extra_info: nil, summary_text: "Pas de photo montrant l'article reçu mais mais pas commandé", coef: 2, answer_number: 2)

ComplaintAnswer.create(text: "Moins de 50€", complaint_kind: inversion, opinion: defavorable, question_number: 4,
                       extra_info: "Attention impact de frais de port", summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "50 à 100€", complaint_kind: inversion, opinion: partagee, question_number: 4,
                       extra_info: nil, summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Plus de 100€", complaint_kind: inversion, opinion: favorable, question_number: 4,
                       extra_info: nil, summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Moins de 50% de la commande", complaint_kind: inversion, opinion: favorable, question_number: 5,
                       extra_info: nil, summary_text: "Afficher le % de la reclamation sur la valeur totale de la commande", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "50% à 99% de la commande", complaint_kind: inversion, opinion: partagee, question_number: 5,
                       extra_info: nil, summary_text: "Afficher le % de la reclamation sur la valeur totale de la commande", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "100% de la commande", complaint_kind: inversion, opinion: defavorable, question_number: 5,
                       extra_info: nil, summary_text: "Afficher le % de la reclamation sur la valeur totale de la commande", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui, Ass + MV", complaint_kind: inversion, opinion: favorable, question_number: 6,
                       extra_info: nil, summary_text: "Garantie Main verte", coef: 2, answer_number: 1)
ComplaintAnswer.create(text: "Avant 2018", complaint_kind: inversion, opinion: partagee, question_number: 6,
                       extra_info: nil, summary_text: "Commande passée avant 2018, il n'y a pas de garantie", coef: 2, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: inversion, opinion: defavorable, question_number: 6,
                       extra_info: nil, summary_text: "Pas de garantie", coef: 2, answer_number: 3)
ComplaintAnswer.create(text: "Oui, Météo", complaint_kind: inversion, opinion: favorable, question_number: 6,
                       extra_info: nil, summary_text: "Garantie Météo", coef: 2, answer_number: 4)

ComplaintAnswer.create(text: "< 72h", complaint_kind: inversion, opinion: defavorable, question_number: 7,
                       extra_info: nil, summary_text: "Le transporteur a respecté les delais annoncés", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "72/96h", complaint_kind: inversion, opinion: partagee, question_number: 7,
                       extra_info: nil, summary_text: "Le transporteur a livré avec un peu de retard", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "> 96h", complaint_kind: inversion, opinion: favorable, question_number: 7,
                       extra_info: nil, summary_text: "Le transporteur n'a pas respecté les delais annoncés", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "+/- 5 jrs", complaint_kind: inversion, opinion: defavorable, question_number: 7,
                       extra_info: nil, summary_text: "Le transporteur a respecté les delais annoncés", coef: 1, answer_number: 4)
ComplaintAnswer.create(text: "5 à 10 jrs", complaint_kind: inversion, opinion: partagee, question_number: 7,
                       extra_info: nil, summary_text: "Le transporteur a livré avec un peu de retard", coef: 1, answer_number: 5)
ComplaintAnswer.create(text: "> 10 jrs", complaint_kind: inversion, opinion: favorable, question_number: 7,
                       extra_info: nil, summary_text: "Le transporteur n'a pas respecté les delais annoncés", coef: 1, answer_number: 6)

ComplaintAnswer.create(text: "+/- 10 jrs", complaint_kind: inversion, opinion: defavorable, question_number: 7,
                       extra_info: nil, summary_text: "Le transporteur a respecté les delais annoncés", coef: 1, answer_number: 7)
ComplaintAnswer.create(text: "10 à 15 jrs", complaint_kind: inversion, opinion: partagee, question_number: 7,
                       extra_info: nil, summary_text: "Le transporteur a livré avec un peu de retard", coef: 1, answer_number: 8)
ComplaintAnswer.create(text: "> 15 jrs", complaint_kind: inversion, opinion: favorable, question_number: 7,
                       extra_info: nil, summary_text: "Le transporteur n'a pas respecté les delais annoncés", coef: 1, answer_number: 9)

ComplaintAnswer.create(text: "Oui", complaint_kind: inversion, opinion: defavorable, question_number: 8,
                       extra_info: nil, summary_text: "Commande expédiée dans les délais", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Retard 1 sem", complaint_kind: inversion, opinion: partagee, question_number: 8,
                       extra_info: nil, summary_text: "Commande expédiée avec xxx jours de retard", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Retard + 2 sem", complaint_kind: inversion, opinion: favorable, question_number: 8,
                       extra_info: nil, summary_text: "Commande expédiée avec xxx jours de retard", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Nouveau client", complaint_kind: inversion, opinion: favorable, question_number: 9,
                       extra_info: nil, summary_text: "Nouveau client", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Client fidèle avec un réclamation récente", complaint_kind: inversion, opinion: partagee, question_number: 9,
                       extra_info: nil, summary_text: "Client fidèle avec une réclamation récente", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Client fidèle sans réclamation récente", complaint_kind: inversion, opinion: defavorable, question_number: 9,
                       extra_info: nil, summary_text: "Client fidèle sans réclamation récente", coef: 1, answer_number: 3)

## Casse_horticole
ComplaintAnswer.create(text: "Oui", complaint_kind: casse_horticole, opinion: defavorable, question_number: 1,
                       extra_info: nil, summary_text: "Coutumier des réclamations", coef: 2, answer_number: 1)
ComplaintAnswer.create(text: "Partagé", complaint_kind: casse_horticole, opinion: partagee, question_number: 1,
                       extra_info: nil, summary_text: "Des réclamations dans le passé", coef: 2, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: casse_horticole, opinion: favorable, question_number: 1,
                       extra_info: nil, summary_text: "Pas un coutumier des réclamations", coef: 2, answer_number: 3)

ComplaintAnswer.create(text: "Oui, Ass + MV", complaint_kind: casse_horticole, opinion: favorable, question_number: 2,
                       extra_info: nil, summary_text: "Garantie Main verte", coef: 2, answer_number: 1)
ComplaintAnswer.create(text: "Avant 2018", complaint_kind: casse_horticole, opinion: partagee, question_number: 2,
                       extra_info: nil, summary_text: "Commande passée avant 2018, il n'y avait pas de garantie", coef: 2, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: casse_horticole, opinion: defavorable, question_number: 2,
                       extra_info: nil, summary_text: "Pas de garantie", coef: 2, answer_number: 3)
ComplaintAnswer.create(text: "Oui, Météo", complaint_kind: casse_horticole, opinion: favorable, question_number: 2,
                       extra_info: nil, summary_text: "Garantie Météo", coef: 2, answer_number: 4)

ComplaintAnswer.create(text: "Oui", complaint_kind: casse_horticole, opinion: favorable, question_number: 3,
                       extra_info: nil, summary_text: "Livraison 24/48h", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Client Print", complaint_kind: casse_horticole, opinion: partagee, question_number: 3,
                       extra_info: "NB: il faut en profiter pour conseiller les clients de passer leur cde sur le web",
                       summary_text: "Client print ne peut pas choisir son mode de livraison", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: casse_horticole, opinion: defavorable, question_number: 3,
                       extra_info: nil, summary_text: "Livraison standard : non recommandée pour les plantes", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Moins de 50€", complaint_kind: casse_horticole, opinion: defavorable, question_number: 4,
                       extra_info: "Attention impact de frais de port", summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "50 à 100€", complaint_kind: casse_horticole, opinion: partagee, question_number: 4,
                       extra_info: nil, summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Plus de 100€", complaint_kind: casse_horticole, opinion: favorable, question_number: 4,
                       extra_info: nil, summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Moins de 50% de la commande", complaint_kind: casse_horticole, opinion: favorable, question_number: 5,
                       extra_info: nil, summary_text: "Afficher le % de la reclamation sur la valeur totale de la commande", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "50% à 99% de la commande", complaint_kind: casse_horticole, opinion: partagee, question_number: 5,
                       extra_info: nil, summary_text: "Afficher le % de la reclamation sur la valeur totale de la commande", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "100% de la commande", complaint_kind: casse_horticole, opinion: defavorable, question_number: 5,
                       extra_info: nil, summary_text: "Afficher le % de la reclamation sur la valeur totale de la commande", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui", complaint_kind: casse_horticole, opinion: defavorable, question_number: 6,
                       extra_info: nil, summary_text: "Commande expédiée dans les délais", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Retard 1 sem", complaint_kind: casse_horticole, opinion: partagee, question_number: 6,
                       extra_info: nil, summary_text: "Commande expédiée avec xxx jours de retard", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Retard + 2 sem", complaint_kind: casse_horticole, opinion: favorable, question_number: 6,
                       extra_info: nil, summary_text: "Commande expédiée avec xxx jours de retard", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Nouveau client", complaint_kind: casse_horticole, opinion: favorable, question_number: 7,
                       extra_info: nil, summary_text: "Nouveau client", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Client fidèle avec un réclamation récente", complaint_kind: casse_horticole, opinion: partagee, question_number: 7,
                       extra_info: nil, summary_text: "Client fidèle avec une réclamation récente", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Client fidèle sans réclamation récente", complaint_kind: casse_horticole, opinion: defavorable, question_number: 7,
                       extra_info: nil, summary_text: "Client fidèle sans réclamation récente", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui", complaint_kind: casse_horticole, opinion: favorable, question_number: 8,
                       extra_info: nil, summary_text: "Contestation donnée au livreur", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Colis déposé", complaint_kind: casse_horticole, opinion: partagee, question_number: 8,
                       extra_info: nil, summary_text: "Le colis a été deposé, pas de contestation possible", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: casse_horticole, opinion: defavorable , question_number: 8,
                       extra_info: nil, summary_text: "Pas de contestation donné au livreur", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "< 72h", complaint_kind: casse_horticole, opinion: defavorable, question_number: 9,
                       extra_info: nil, summary_text: "Le transporteur a respecté les delais annoncés", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "72/96h", complaint_kind: casse_horticole, opinion: partagee, question_number: 9,
                       extra_info: nil, summary_text: "Le transporteur a livré avec un peu de retard", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "> 96h", complaint_kind: casse_horticole, opinion: favorable, question_number: 9,
                       extra_info: nil, summary_text: "Le transporteur n'a pas respecté les delais annoncés", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "+/- 5 jrs", complaint_kind: casse_horticole, opinion: defavorable, question_number: 9,
                       extra_info: nil, summary_text: "Le transporteur a respecté les delais annoncés", coef: 1, answer_number: 4)
ComplaintAnswer.create(text: "5 à 10 jrs", complaint_kind: casse_horticole, opinion: partagee, question_number: 9,
                       extra_info: nil, summary_text: "Le transporteur a livré avec un peu de retard", coef: 1, answer_number: 5)
ComplaintAnswer.create(text: "> 10 jrs", complaint_kind: casse_horticole, opinion: favorable, question_number: 9,
                       extra_info: nil, summary_text: "Le transporteur n'a pas respecté les delais annoncés", coef: 1, answer_number: 6)

ComplaintAnswer.create(text: "+/- 10 jrs", complaint_kind: casse_horticole, opinion: defavorable, question_number: 9,
                       extra_info: nil, summary_text: "Le transporteur a respecté les delais annoncés", coef: 1, answer_number: 7)
ComplaintAnswer.create(text: "10 à 15 jrs", complaint_kind: casse_horticole, opinion: partagee, question_number: 9,
                       extra_info: nil, summary_text: "Le transporteur a livré avec un peu de retard", coef: 1, answer_number: 8)
ComplaintAnswer.create(text: "> 15 jrs", complaint_kind: casse_horticole, opinion: favorable, question_number: 9,
                       extra_info: nil, summary_text: "Le transporteur n'a pas respecté les delais annoncés", coef: 1, answer_number: 9)

ComplaintAnswer.create(text: "A réception ou dans les 24h", complaint_kind: casse_horticole, opinion: favorable, question_number: 10,
                       extra_info: nil, summary_text: "Le probleme est signalé rapidement", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Dans les 24/48h", complaint_kind: casse_horticole, opinion: partagee, question_number: 10,
                       extra_info: nil, summary_text: "Le probleme est signalé moyennement rapidement", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "A-delà de 48h", complaint_kind: casse_horticole, opinion: defavorable, question_number: 10,
                       extra_info: nil, summary_text: "Le probleme est signalé après 48h", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui", complaint_kind: casse_horticole, opinion: favorable, question_number: 11,
                       extra_info: nil, summary_text: "La plante est cassée à la greffe sur la photo", coef: 3, answer_number: 1)
ComplaintAnswer.create(text: "Non", complaint_kind: casse_horticole, opinion: defavorable, question_number: 11,
                       extra_info: nil, summary_text: "La plante n'est pas cassée à la greffe sur la photo", coef: 3, answer_number: 2)

ComplaintAnswer.create(text: "Oui", complaint_kind: casse_horticole, opinion: favorable, question_number: 12,
                       extra_info: "Ex :\n>> balcons terrasses(pétunia...)\n>>plantes légumes (tomates...)\n>>certaines vivaces (lavandes...)",
                       summary_text: "La réclamation porte sur des articles fragiles", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Partagé", complaint_kind: casse_horticole, opinion: partagee, question_number: 12,
                       extra_info: nil, summary_text: "Nous ne savons pas si les articles sont fragiles", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: casse_horticole, opinion: defavorable, question_number: 12,
                       extra_info: "A relier avec le mode de livraison (ok 24/48h, ko Eco etc)",
                       summary_text: "La réclamation ne porte pas sur des articles fragiles", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui", complaint_kind: casse_horticole, opinion: favorable, question_number: 13,
                       extra_info: nil, summary_text: "Il y a beaucoup de réclamations sur ces références d'articles", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Partagé", complaint_kind: casse_horticole, opinion: partagee, question_number: 13,
                       extra_info: nil, summary_text: "Nous ne connaissons pas le nombre de réclamations sur ces références d'articles", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: casse_horticole, opinion: defavorable, question_number: 13,
                       extra_info: nil, summary_text: "Il y a peu de réclamations sur ces références d'articles", coef: 1, answer_number: 3)

## Casse_non_horticole
ComplaintAnswer.create(text: "Oui", complaint_kind: casse_non_horticole, opinion: defavorable, question_number: 1,
                       extra_info: nil, summary_text: "Coutumier des réclamations", coef: 2, answer_number: 1)
ComplaintAnswer.create(text: "Partagé", complaint_kind: casse_non_horticole, opinion: partagee, question_number: 1,
                       extra_info: nil, summary_text: "Des reclamations dans le passé", coef: 2, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: casse_non_horticole, opinion: favorable, question_number: 1,
                       extra_info: nil, summary_text: "Pas un coutumier des réclamations", coef: 2, answer_number: 3)

ComplaintAnswer.create(text: "Oui, Ass + MV", complaint_kind: casse_non_horticole, opinion: favorable, question_number: 2,
                       extra_info: nil, summary_text: "Garantie Main verte", coef: 2, answer_number: 1)
ComplaintAnswer.create(text: "Avant 2018", complaint_kind: casse_non_horticole, opinion: partagee, question_number: 2,
                       extra_info: nil, summary_text: "Commande passée avant 2018, il n'y a pas de garantie", coef: 2, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: casse_non_horticole, opinion: defavorable, question_number: 2,
                       extra_info: nil, summary_text: "Pas de garantie", coef: 2, answer_number: 3)
ComplaintAnswer.create(text: "Oui, Météo", complaint_kind: casse_non_horticole, opinion: favorable, question_number: 2,
                       extra_info: nil, summary_text: "Garantie Météo", coef: 2, answer_number: 4)

ComplaintAnswer.create(text: "Oui", complaint_kind: casse_non_horticole, opinion: favorable, question_number: 3,
                       extra_info: nil, summary_text: "Livraison 24/48", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Client Print", complaint_kind: casse_non_horticole, opinion: partagee, question_number: 3,
                       extra_info: "NB: il faut en profiter pour conseiller les clients de passer leur cde sur le web",
                       summary_text: "Client print ne peut pas choisir son mode de livraison", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: casse_non_horticole, opinion: defavorable, question_number: 3,
                       extra_info: nil, summary_text: "Livraison standart : nno recommandé pour les plantes", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Moins de 50€", complaint_kind: casse_non_horticole, opinion: defavorable, question_number: 4,
                       extra_info: "Attention impact de frais de port", summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "50 à 100€", complaint_kind: casse_non_horticole, opinion: partagee, question_number: 4,
                       extra_info: nil, summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Plus de 100€", complaint_kind: casse_non_horticole, opinion: favorable, question_number: 4,
                       extra_info: nil, summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Moins de 50% de la commande", complaint_kind: casse_non_horticole, opinion: favorable, question_number: 5,
                       extra_info: nil, summary_text: "Afficher le % de la reclamation sur la valeur totale de la commande", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "50% à 99% de la commande", complaint_kind: casse_non_horticole, opinion: partagee, question_number: 5,
                       extra_info: nil, summary_text: "Afficher le % de la reclamation sur la valeur totale de la commande", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "100% de la commande", complaint_kind: casse_non_horticole, opinion: defavorable, question_number: 5,
                       extra_info: nil, summary_text: "Afficher le % de la reclamation sur la valeur totale de la commande", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui", complaint_kind: casse_non_horticole, opinion: defavorable, question_number: 6,
                       extra_info: nil, summary_text: "Commande expédiée dans les délais", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Retard 1 sem", complaint_kind: casse_non_horticole, opinion: partagee, question_number: 6,
                       extra_info: nil, summary_text: "Commande expédiée avec xxx jours de retard", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Retard + 2 sem", complaint_kind: casse_non_horticole, opinion: favorable, question_number: 6,
                       extra_info: nil, summary_text: "Commande expédiée avec xxx jours de retard", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Nouveau client", complaint_kind: casse_non_horticole, opinion: favorable, question_number: 7,
                       extra_info: nil, summary_text: "Nouveau client", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Client fidèle avec un réclamation récente", complaint_kind: casse_non_horticole, opinion: partagee, question_number: 7,
                       extra_info: nil, summary_text: "Client fidèle avec une réclamation récente", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Client fidèle sans réclamation récente", complaint_kind: casse_non_horticole, opinion: defavorable, question_number: 7,
                       extra_info: nil, summary_text: "Client fidèle sans réclamation récente", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui", complaint_kind: casse_non_horticole, opinion: favorable, question_number: 8,
                       extra_info: nil, summary_text: "Contestation donnée au livreur", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Colis déposé", complaint_kind: casse_non_horticole, opinion: partagee, question_number: 8,
                       extra_info: nil, summary_text: "Le colis a été deposé, pas de contestation possible", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: casse_non_horticole, opinion: defavorable , question_number: 8,
                       extra_info: nil, summary_text: "Pas de contestation donné au livreur", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "< 72h", complaint_kind: casse_non_horticole, opinion: defavorable, question_number: 9,
                       extra_info: nil, summary_text: "Le transporteur a respecté les delais annoncés", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "72/96h", complaint_kind: casse_non_horticole, opinion: partagee, question_number: 9,
                       extra_info: nil, summary_text: "Le transporteur a livré avec un peu de retard", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "> 96h", complaint_kind: casse_non_horticole, opinion: favorable, question_number: 9,
                       extra_info: nil, summary_text: "Le transporteur n'a pas respecté les delais annoncés", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "+/- 5 jrs", complaint_kind: casse_non_horticole, opinion: defavorable, question_number: 9,
                       extra_info: nil, summary_text: "Le transporteur a respecté les delais annoncés", coef: 1, answer_number: 4)
ComplaintAnswer.create(text: "5 à 10 jrs", complaint_kind: casse_non_horticole, opinion: partagee, question_number: 9,
                       extra_info: nil, summary_text: "Le transporteur a livré avec un peu de retard", coef: 1, answer_number: 5)
ComplaintAnswer.create(text: "> 10 jrs", complaint_kind: casse_non_horticole, opinion: favorable, question_number: 9,
                       extra_info: nil, summary_text: "Le transporteur n'a pas respecté les delais annoncés", coef: 1, answer_number: 6)

ComplaintAnswer.create(text: "+/- 10 jrs", complaint_kind: casse_non_horticole, opinion: defavorable, question_number: 9,
                       extra_info: nil, summary_text: "Le transporteur a respecté les delais annoncés", coef: 1, answer_number: 7)
ComplaintAnswer.create(text: "10 à 15 jrs", complaint_kind: casse_non_horticole, opinion: partagee, question_number: 9,
                       extra_info: nil, summary_text: "Le transporteur a livré avec un peu de retard", coef: 1, answer_number: 8)
ComplaintAnswer.create(text: "> 15 jrs", complaint_kind: casse_non_horticole, opinion: favorable, question_number: 9,
                       extra_info: nil, summary_text: "Le transporteur n'a pas respecté les delais annoncés", coef: 1, answer_number: 9)

ComplaintAnswer.create(text: "A réception ou dans les 24h", complaint_kind: casse_non_horticole, opinion: favorable, question_number: 10,
                       extra_info: nil, summary_text: "Le probleme est signalé rapidement", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Dans les 24/48h", complaint_kind: casse_non_horticole, opinion: partagee, question_number: 10,
                       extra_info: nil, summary_text: "Le probleme est signalé moyennement rapidement", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "A-delà de 48h", complaint_kind: casse_non_horticole, opinion: defavorable, question_number: 10,
                       extra_info: nil, summary_text: "Le probleme est signalé après 48h", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui", complaint_kind: casse_non_horticole, opinion: favorable, question_number: 11,
                       extra_info: nil, summary_text: "L'article est cassé sur la photo", coef: 3, answer_number: 1)
ComplaintAnswer.create(text: "Non", complaint_kind: casse_non_horticole, opinion: defavorable, question_number: 11,
                       extra_info: nil, summary_text: "L'article n'est pas cassé sur la photo", coef: 3, answer_number: 2)

ComplaintAnswer.create(text: "Oui", complaint_kind: casse_non_horticole, opinion: favorable, question_number: 12,
                       extra_info: "Ex:\n>> balcons terrasses (pétunias...)\n>> plants légumes (tomates...)\n>> certaines vivaces (lavandes...)",
                       summary_text: "La reclamation porte sur des articles fragiles", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Partagé", complaint_kind: casse_non_horticole, opinion: partagee, question_number: 12,
                       extra_info: nil, summary_text: "Nous ne savons pas si les articles sont fragiles", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: casse_non_horticole, opinion: defavorable, question_number: 12,
                       extra_info: "Arbustes, arbres fruitiers...", summary_text: "La reclamation ne porte pas sur des articles fragiles", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui", complaint_kind: casse_non_horticole, opinion: favorable, question_number: 13,
                       extra_info: nil, summary_text: "Il y a beaucoup de réclamations sur ces références d'articles", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Partagé", complaint_kind: casse_non_horticole, opinion: partagee, question_number: 13,
                       extra_info: nil, summary_text: "Nous ne connaissons pas le nombre de réclamations sur ces références d'articles", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: casse_non_horticole, opinion: defavorable, question_number: 13,
                       extra_info: nil, summary_text: "Il y a peu de réclamations sur ces références d'articles", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui", complaint_kind: casse_non_horticole, opinion: favorable, question_number: 14,
                       extra_info: nil, summary_text: nil, coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Non", complaint_kind: casse_non_horticole, opinion: defavorable, question_number: 14,
                       extra_info: nil, summary_text: nil, coef: 1, answer_number: 2)

## Non_conforme
ComplaintAnswer.create(text: "Oui", complaint_kind: non_conforme, opinion: defavorable, question_number: 1,
                       extra_info: nil, summary_text: "Coutumier des réclamations", coef: 2, answer_number: 1)
ComplaintAnswer.create(text: "Partagé", complaint_kind: non_conforme, opinion: partagee, question_number: 1,
                       extra_info: nil, summary_text: "Des reclamations dans le passé", coef: 2, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: non_conforme, opinion: favorable, question_number: 1,
                       extra_info: nil, summary_text: "Pas un coutumier des réclamations", coef: 2, answer_number: 3)

ComplaintAnswer.create(text: "Oui, Ass + MV", complaint_kind: non_conforme, opinion: favorable, question_number: 2,
                       extra_info: nil, summary_text: "Garantie Main verte", coef: 2, answer_number: 1)
ComplaintAnswer.create(text: "Avant 2018", complaint_kind: non_conforme, opinion: partagee, question_number: 2,
                       extra_info: nil, summary_text: "Commande passée avant 2018, il n'y a pas de garantie", coef: 2, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: non_conforme, opinion: defavorable, question_number: 2,
                       extra_info: nil, summary_text: "Pas de garantie", coef: 2, answer_number: 3)
ComplaintAnswer.create(text: "Oui, Météo", complaint_kind: non_conforme, opinion: favorable, question_number: 2,
                       extra_info: nil, summary_text: "Garantie Météo", coef: 2, answer_number: 4)

ComplaintAnswer.create(text: "Moins de 50€", complaint_kind: non_conforme, opinion: favorable, question_number: 3,
                       extra_info: "Attention impact de frais de port", summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "50 à 100€", complaint_kind: non_conforme, opinion: partagee, question_number: 3,
                       extra_info: nil, summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Plus de 100€", complaint_kind: non_conforme, opinion: favorable, question_number: 3,
                       extra_info: nil, summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Moins de 50% de la commande", complaint_kind: non_conforme, opinion: favorable, question_number: 4,
                       extra_info: nil, summary_text: "Afficher le % de la reclamation sur la valeur totale de la commande", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "50% à 99% de la commande", complaint_kind: non_conforme, opinion: partagee, question_number: 4,
                       extra_info: nil, summary_text: "Afficher le % de la reclamation sur la valeur totale de la commande", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "100% de la commande", complaint_kind: non_conforme, opinion: defavorable, question_number: 4,
                       extra_info: nil, summary_text: "Afficher le % de la reclamation sur la valeur totale de la commande", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui", complaint_kind: non_conforme, opinion: favorable, question_number: 5,
                       extra_info: nil, summary_text: "Il y a beaucoup de réclamations sur ces références d'artciles ", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Partagé(e)", complaint_kind: non_conforme, opinion: partagee, question_number: 5,
                       extra_info: nil, summary_text: "Nous ne connaissons pas le nombre de réclamtions sur ces références d'articles", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: non_conforme, opinion: defavorable, question_number: 5,
                       extra_info: nil, summary_text: "Il y a peu de réclamations sur ces références d'articles ", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Nouveau client", complaint_kind: non_conforme, opinion: favorable, question_number: 6,
                       extra_info: nil, summary_text: "Nouveau client", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Client fidèle avec un réclamation récente", complaint_kind: non_conforme, opinion: partagee, question_number: 6,
                       extra_info: nil, summary_text: "Client fidèle avec une réclamation récente", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Client fidèle sans réclamation récente", complaint_kind: non_conforme, opinion: defavorable, question_number: 6,
                       extra_info: nil, summary_text: "Client fidèle sans réclamation récente", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "A la réception ou dans les 24h", complaint_kind: non_conforme, opinion: favorable, question_number: 7,
                       extra_info: nil, summary_text: "Le probleme est signalé rapidement", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Dans les 24/48h", complaint_kind: non_conforme, opinion: partagee, question_number: 7,
                       extra_info: nil, summary_text: "Le probleme est signalé moyennement rapidement", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "A-delà de 48h", complaint_kind: non_conforme, opinion: defavorable, question_number: 7,
                       extra_info: nil, summary_text: "Le probleme est signalé après 48h", coef: 1, answer_number: 3)

ComplaintAnswer.create(text: "Oui", complaint_kind: non_conforme, opinion: favorable, question_number: 8,
                       extra_info: nil, summary_text: "Nous avons reçu une photo", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "Non", complaint_kind: non_conforme, opinion: defavorable, question_number: 8,
                       extra_info: nil, summary_text: "Nous n'avons pas de photo", coef: 1, answer_number: 2)

ComplaintAnswer.create(text: "Oui", complaint_kind: non_conforme, opinion: favorable, question_number: 9,
                       extra_info: nil, summary_text: "L'article est réellement non conforme", coef: 3, answer_number: 1)
ComplaintAnswer.create(text: "Entre", complaint_kind: non_conforme, opinion: partagee, question_number: 9,
                       extra_info: nil, summary_text: "Il est difficile de juger si l'article est conforme ou non", coef: 3, answer_number: 2)
ComplaintAnswer.create(text: "Non", complaint_kind: non_conforme, opinion: defavorable, question_number: 9,
                       extra_info: nil, summary_text: "L'article est conforme", coef: 3, answer_number: 3)

# Rapide
ComplaintAnswer.create(text: "Moins de 50€", complaint_kind: 10, opinion: 2, question_number: 1, extra_info: "Attention impact de frais de port", summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 1)
ComplaintAnswer.create(text: "50 à 100€", complaint_kind: 10, opinion: 1, question_number: 1, extra_info: nil, summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 2)
ComplaintAnswer.create(text: "Plus de 100€", complaint_kind: 10, opinion: 0, question_number: 1, extra_info: nil, summary_text: "Afficher la valeur de la commande", coef: 1, answer_number: 3)