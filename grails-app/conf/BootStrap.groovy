import com.yuyusoft.goodmin.OpAdmin
import com.yuyusoft.goodmin.SysPermit
import com.yuyusoft.goodmin.SysRole
import grails.util.GrailsUtil

class BootStrap {

    def init = { servletContext ->

        if (GrailsUtil.isDevelopmentEnv()) {

            // 系统权限
            def permitSystem = new SysPermit(permitName: "系统管理", level: 0, idx: 100, parent: 0)
            permitSystem.save()
            if (permitSystem.hasErrors()) {
                log.error("初始化数据错误：" + permitSystem.errors)
            }

            def permitSystemAdmin = new SysPermit(permitName: "用户管理", permitUrl: "/opAdmin/index", level: 1, idx: 10001, parent: 100)
            permitSystemAdmin.save()
            if (permitSystemAdmin.hasErrors()) {
                log.error("初始化数据错误：" + permitSystemAdmin.errors)
            }

            def permitSystemRole = new SysPermit(permitName: "角色管理", permitUrl: "/sysRole/index", level: 1, idx: 10002, parent: 100)
            permitSystemRole.save()
            if (permitSystemRole.hasErrors()) {
                log.error("初始化数据错误：" + permitSystemRole.errors)
            }

            // 超级管理员角色
            def superAdminRole = new SysRole(roleName: "超级管理员", description: "拥有所有权限")
            superAdminRole.save()
            if (superAdminRole.hasErrors()) {
                println(">>> Init errors: " + superAdminRole.errors)
            }

            // 超级管理员账号
            def superAdmin = new OpAdmin(loginName: "admin", loginPWD: "123", realName: "超级管理员", status: 1)
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
