package ht.mbds.tpgrails

class Groupe {

    String nomGroupe
    String description

    Illustration illustrationGroup
    static hasMany = [listPois :Poi]



    static constraints = {
        illustrationGroup nullable: true
        listPois nullable: true
    }
}
