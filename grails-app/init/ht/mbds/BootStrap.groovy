package ht.mbds

import ht.mbds.tpgrails.Illustration
import ht.mbds.tpgrails.Poi
import ht.mbds.tpgrails.Role
import ht.mbds.tpgrails.User
import ht.mbds.tpgrails.UserRole

class BootStrap {

    def init = { servletContext ->

        def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
        def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)

        def adminUser = User.findByUsername('admin') ?: new User(
                username: 'admin',
                password: 'admin',
                enabled: true).save(failOnError: true)


        if (!adminUser.authorities.contains(adminRole)) {
            UserRole.create adminUser, adminRole
        }

        //TODO : put specific data for POIs

        def mPoi = new Poi(nom: "1_BRH_", emplacement: "Port-au-Prince", description: "Banque de la Rebuplique d'Haiti", latitude: 18.56464, longitude: -74.02356).save(failOnError: true)
        new Poi(nom: "2_BNC_", emplacement: "Port-au-Prince", description: "Banque Nationale de Crédit", latitude: 18.46464, longitude: -74.12356).save(failOnError: true)
        new Poi(nom: "3_BRH_", emplacement: "Port-au-Prince", description: "Banque de la Rebuplique d'Haiti", latitude: 18.56464, longitude: -74.02356).save(failOnError: true)
        new Poi(nom: "4_BNC_", emplacement: "Port-au-Prince", description: "Banque Nationale de Crédit", latitude: 18.46464, longitude: -74.12356).save(failOnError: true)
        new Poi(nom: "5_BRH_", emplacement: "Port-au-Prince", description: "Banque de la Rebuplique d'Haiti", latitude: 18.56464, longitude: -74.02356).save(failOnError: true)
        new Poi(nom: "6_BNC_", emplacement: "Port-au-Prince", description: "Banque Nationale de Crédit", latitude: 18.46464, longitude: -74.12356).save(failOnError: true)
        new Poi(nom: "7_BRH_", emplacement: "Port-au-Prince", description: "Banque de la Rebuplique d'Haiti", latitude: 18.56464, longitude: -74.02356).save(failOnError: true)
        new Poi(nom: "8_BNC_", emplacement: "Port-au-Prince", description: "Banque Nationale de Crédit", latitude: 18.46464, longitude: -74.12356).save(failOnError: true)
        new Poi(nom: "9_BRH_", emplacement: "Port-au-Prince", description: "Banque de la Rebuplique d'Haiti", latitude: 18.56464, longitude: -74.02356).save(failOnError: true)
        new Poi(nom: "10_BNC_", emplacement: "Port-au-Prince", description: "Banque Nationale de Crédit", latitude: 18.46464, longitude: -74.12356).save(failOnError: true)
        new Poi(nom: "10_BRH_", emplacement: "Port-au-Prince", description: "Banque de la Rebuplique d'Haiti", latitude: 18.56464, longitude: -74.02356).save(failOnError: true)

        new Illustration(pathImage: "sdofjdjf", nomImage: "dkfskjhsdkfs", poiIllustration: mPoi).save(failOnError: true)

    }
    def destroy = {
    }
}
