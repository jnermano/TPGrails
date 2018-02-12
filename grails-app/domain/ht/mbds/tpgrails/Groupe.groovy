package ht.mbds.tpgrails

class Groupe {

    String nomGroupe
    String description
    byte[] image

    static hasMany = [listPois :Poi]

    static constraints = {
        listPois nullable: true
        image maxSize: 1024 * 1024 * 50
        image nullable: true
    }

}
