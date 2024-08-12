workspace {

    model {
        posOperator = person "POS Operator"
        softwareSystem = softwareSystem "Software System" {
            wa = container "Web Application"
            db = container "Database Schema" {
                tags "Database"
            }
        }

        # posOperator -> softwareSystem "Uses"
        posOperator -> wa "Uses"
        wa -> db "Reads from"
    }

    views {
        systemContext softwareSystem "Diagram1" {
            include *
            autolayout lr
        }

        container softwareSystem "Diagrma99" {
            include *
            autolayout lr
        }

        styles {
            element "Element" {
                color white
            }
            element "Software System" {
                background #2D882D
            }
            element "Person" {
                background #116611
                shape person
            }
            element "Container" {
                background #55AA55
            }
            element "Database" {
                shape cylinder
            }
        }
    }

    configuration {
        scope softwaresystem
    }

}