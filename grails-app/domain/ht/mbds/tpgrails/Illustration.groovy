package ht.mbds.tpgrails

class Illustration {

    String nomImage
    String pathImage
    byte[] image

    static belongsTo = [poiIllustration:Poi]

    static constraints = {
        poiIllustration nullable: true
        image maxSize: 1024 * 1024 * 50
        image nullable: true
    }
}
