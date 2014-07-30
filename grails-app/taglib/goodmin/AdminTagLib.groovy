package goodmin

class AdminTagLib {
    // defaultEncodeAs和encodeAsForTags控制返回的是否parse为html
//    static defaultEncodeAs = [taglib:'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]

    static defaultEncodeAs = [taglib:'none']

    def hasPermit = { attrs, body ->
//        println ">>> uri=" + attrs.uri + ", check:" + session.userPermitUrls
        if (session.userPermitUrls?.indexOf(attrs.uri) >= 0 || session.user?.id == 1) {
            out << body()
        }
    }
}
