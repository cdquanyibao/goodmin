import com.yuyusoft.goodmin.OpAdmin
import com.yuyusoft.goodmin.SysPermit
import com.yuyusoft.goodmin.SysRole
import grails.util.GrailsUtil

class BootStrap {

    def init = { servletContext ->

        if (GrailsUtil.isDevelopmentEnv()) {

            // 超级管理员角色
            def superAdminRole = new SysRole(roleName: "超级管理员", description: "拥有所有权限")
            superAdminRole.save()
            if (superAdminRole.hasErrors()) {
                println(">>> Init errors: " + superAdminRole.errors)
            }

            // 超级管理员账号
            def superAdmin = new OpAdmin(id: 0, loginName: "admin", loginPWD: "123", realName: "超级管理员", status: 1)
            superAdmin.save()
            if (superAdmin.hasErrors()) {
                println(">>> Init errors: " + superAdmin.errors)
            } else {
                superAdmin.sysRole = superAdminRole
            }

        }
    }

    def destroy = {
    }
}
