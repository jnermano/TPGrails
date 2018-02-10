package ht.mbds.tpgrails

import grails.gorm.services.Service

@Service(Poi)
interface PoiService {

    Poi get(Serializable id)

    List<Poi> list(Map args)

    Long count()

    void delete(Serializable id)

    Poi save(Poi poi)

}