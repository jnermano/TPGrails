package ht.mbds.tpgrails

import grails.gorm.services.Service

@Service(Groupe)
interface GroupeService {

    Groupe get(Serializable id)

    List<Groupe> list(Map args)

    Long count()

    void delete(Serializable id)

    Groupe save(Groupe groupe)

}