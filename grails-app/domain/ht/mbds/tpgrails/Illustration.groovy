package ht.mbds.tpgrails

class Illustration {

    String nomImage
    String pathImage

    static belongsTo = [poiIllustration:Poi, groupeIllustration:Groupe]

    static constraints = {
        poiIllustration nullable: true
        groupeIllustration nullable: true
    }
}
