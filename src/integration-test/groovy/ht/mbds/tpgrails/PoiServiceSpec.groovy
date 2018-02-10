package ht.mbds.tpgrails

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class PoiServiceSpec extends Specification {

    PoiService poiService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Poi(...).save(flush: true, failOnError: true)
        //new Poi(...).save(flush: true, failOnError: true)
        //Poi poi = new Poi(...).save(flush: true, failOnError: true)
        //new Poi(...).save(flush: true, failOnError: true)
        //new Poi(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //poi.id
    }

    void "test get"() {
        setupData()

        expect:
        poiService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Poi> poiList = poiService.list(max: 2, offset: 2)

        then:
        poiList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        poiService.count() == 5
    }

    void "test delete"() {
        Long poiId = setupData()

        expect:
        poiService.count() == 5

        when:
        poiService.delete(poiId)
        sessionFactory.currentSession.flush()

        then:
        poiService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Poi poi = new Poi()
        poiService.save(poi)

        then:
        poi.id != null
    }
}
