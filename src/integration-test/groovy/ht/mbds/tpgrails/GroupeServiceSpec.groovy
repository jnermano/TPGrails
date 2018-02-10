package ht.mbds.tpgrails

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class GroupeServiceSpec extends Specification {

    GroupeService groupeService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Groupe(...).save(flush: true, failOnError: true)
        //new Groupe(...).save(flush: true, failOnError: true)
        //Groupe groupe = new Groupe(...).save(flush: true, failOnError: true)
        //new Groupe(...).save(flush: true, failOnError: true)
        //new Groupe(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //groupe.id
    }

    void "test get"() {
        setupData()

        expect:
        groupeService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Groupe> groupeList = groupeService.list(max: 2, offset: 2)

        then:
        groupeList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        groupeService.count() == 5
    }

    void "test delete"() {
        Long groupeId = setupData()

        expect:
        groupeService.count() == 5

        when:
        groupeService.delete(groupeId)
        sessionFactory.currentSession.flush()

        then:
        groupeService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Groupe groupe = new Groupe()
        groupeService.save(groupe)

        then:
        groupe.id != null
    }
}
