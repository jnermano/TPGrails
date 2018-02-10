package ht.mbds.tpgrails

class Poi {
    String nom
    String emplacement
    String latitude
    String longitude
    String description

    static hasMany = [listImage:Illustration, listAppreciation:Appreciation, listGroupes:Groupe]

    static belongsTo = Groupe

    static constraints = {
        nom size: 5..100, blank: false, unique: true

    }
}
