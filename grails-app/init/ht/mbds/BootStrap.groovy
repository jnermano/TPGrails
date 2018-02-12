package ht.mbds

import ht.mbds.tpgrails.Groupe
import ht.mbds.tpgrails.Illustration
import ht.mbds.tpgrails.Poi
import ht.mbds.tpgrails.Role
import ht.mbds.tpgrails.User
import ht.mbds.tpgrails.UserRole

class BootStrap {

    def init = { servletContext ->

        def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
        def moderatorRole = Role.findByAuthority('ROLE_MODER') ?: new Role(authority: 'ROLE_MODER').save(failOnError: true)
        def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)

        def userUser = User.findByUsername("user") ?: new User(
                username: "user",
                password: "user",
                enabled: true).save(failOnError: true)

        def moderUser = User.findByUsername("moderator") ?: new User(
                username: "moderator",
                password: "moderator",
                enabled: true).save(failOnError: true)


        def adminUser = User.findByUsername('admin') ?: new User(
                username: 'admin',
                password: 'admin',
                enabled: true).save(failOnError: true)


        UserRole.create adminUser, adminRole
        UserRole.create moderUser, moderatorRole
        UserRole.create userUser, userRole

        //TODO : put specific data for POIs

        def groupe = new Groupe(nomGroupe: "Banque", description: "Institution bancaire").save(failOnError: true)

        groupe.addToListPois(new Poi(nom: "1_BRH_", emplacement: "Jérémie", description: "Banque de la Rebuplique d'Haiti", latitude: 18.56464, longitude: -74.02356))
        groupe.addToListPois(new Poi(nom: "2_BNC_", emplacement: "Jérémie", description: "Banque Nationale de Crédit", latitude: 18.46464, longitude: -74.12356))

        groupe.save(flush: true, failOnError: true)

    }
    def destroy = {
    }
}
