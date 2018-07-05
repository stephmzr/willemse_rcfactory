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