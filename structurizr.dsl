workspace {

    model {
        cliente = person "Cliente do Broto" "A customer of the bank, with personal bank accounts." "Customer"
        email = softwaresystem "E-mail System" "The internal Microsoft Exchange e-mail system." "External System"
        email2 = softwaresystem "E-mail System 3" "The internal Microsoft Exchange e-mail system." "External System"
        softwareSystem = softwareSystem "Software System" {
            webapp = container "Web Application" {
                cliente -> this "Uses"

            }
        }
        cliente -> email "Reads from and writes to"
        webapp -> email "Reads from and writes to"
        webapp -> email2 "Reads from and writes to"

    }

    views {
        systemContext softwareSystem {
            include *
            animation {
                cliente
                email
                softwareSystem
                email2
            }
            autolayout lr
        }

        container softwareSystem {
            include *
            autolayout lr
        }

        theme default
        styles {
            element "Person" {
                color #ffffff
                fontSize 22
                shape Person
            }
            element "Software System" {
                background #1168bd
                color #ffffff
            }
            element "External System" {
                background #999999
                color #ffffff
            }
        }
    }
    

}
