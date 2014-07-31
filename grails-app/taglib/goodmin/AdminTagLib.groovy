package goodmin

import java.text.SimpleDateFormat

class AdminTagLib {
    // defaultEncodeAs和encodeAsForTags控制返回的是否parse为html
//    static defaultEncodeAs = [taglib:'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]

    static defaultEncodeAs = [taglib:'none']

    /**
     * 是否具有attrs.uri中所有的权限
     */
    def hasPermit = { attrs, body ->
//        println ">>> uri=" + attrs.uri + ", check:" + session.userPermitUrls
        if (session.userPermitUrls?.indexOf(attrs.uri) >= 0 || session.user?.id == 1) {
            out << body()
        }
    }

    /**
     * 简单的页面标题，attrs.content表示内容
     */
    def simplePageHead = { attrs, body ->
        out << "<div class=\"row\">"
        out << "<div class=\"col-lg-12\">"
        out << "<h3 class=\"page-header\">"
        out << "<div class=\"row\">"
        out << "<div class=\"col-lg-8\">"
        out << attrs.content
        out << "</div>"
        out << "</div>"
        out << "</h3>"
        out << "</div>"
        out << "</div>"
/*
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header">
                <div class="row">
                    <div class="col-lg-8">
                        ${opAdminInstance} - <g:message code="opAdmin.view.changePassword.label" />
                    </div>
                </div>
                </h3>
            </div>
        </div>
*/
    }

    def dateFormat = { attrs, body ->
        out << new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date())
    }
}
