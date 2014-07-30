package goodmin

class AdminFilters {

    def filters = {
        all(controller:'*', action:'*') {
            before = {
//                println("filter>>> controller: " + controllerName + ", action: " + actionName)
                if (! controllerName || controllerName in ['login', 'assets']) return true

                // has login
                if (! session.user) {
                    redirect(controller: 'login', action: 'login')
                    return false
                }

                // if super admin with id=0, has all permits
                if (session.user.id == 1) {
                    return true
                }

                // has permits
                def currentUrl = "/" + controllerName + "/" + (actionName == null ? "" : actionName)
                if (! session.userPermitUrls || session.userPermitUrls.indexOf(currentUrl) < 0) {
                    println("login: userid=" + session.user.id + ", currentUrl=" + currentUrl + ", userPermitsUrls: " + session.userPermitUrls)
                    redirect(controller: 'login', action: 'deny')
                    return false
                }

                return true
            }

/*            after = { Map model ->

            }
            afterView = { Exception e ->

            }*/
        }
    }
}
