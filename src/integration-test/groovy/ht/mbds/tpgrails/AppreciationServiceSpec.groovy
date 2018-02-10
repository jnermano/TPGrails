package ht.mbds.tpgrails

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class AppreciationServiceSpec extends Specification {

    AppreciationService appreciationService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Appreciation(...).save(flush: true, failOnError: true)
        //new Appreciation(...).save(flush: true, failOnError: true)
        //Appreciation appreciation = new Appreciation(...).save(flush: true, failOnError: true)
        //new Appreciation(...).save(flush: true, failOnError: true)
        //new Appreciation(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //appreciation.id
    }

    void "test get"() {
        setupData()

        expect:
        appreciationService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Appreciation> appreciationList = appreciationService.list(max: 2, offset: 2)

        then:
        appreciationList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        appreciationService.count() == 5
    }

    void "test delete"() {
        Long appreciationId = setupData()

        expect:
        appreciationService.count() == 5

        when:
        appreciationService.delete(appreciationId)
        sessionFactory.currentSession.flush()

        then:
        appreciationService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Appreciation appreciation = new Appreciation()
        appreciationService.save(appreciation)

        then:
        appreciation.id != null
    }
}
