package ht.mbds.tpgrails

class Appreciation {

    String commentaire
    int note
    Date dateCree

    static belongsTo = [appreciationPoi:Poi]

    static constraints = {
    }
}
