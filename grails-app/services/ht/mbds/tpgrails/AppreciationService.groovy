package ht.mbds.tpgrails

import grails.gorm.services.Service

@Service(Appreciation)
interface AppreciationService {

    Appreciation get(Serializable id)

    List<Appreciation> list(Map args)

    Long count()

    void delete(Serializable id)

    Appreciation save(Appreciation appreciation)

}