package com.yuyusoft.goodmin

/**
 * Created by yangyubo on 14-8-1.
 */
class SysLogUtils {

    static trace = { request, session, content ->

        def ip = request.getHeader("X-Real-IP") == null ? request.getRemoteAddr() : request.getHeader("X-Real-IP")
        def opAdminInstance = session.user

        def sysLog = new SysLog(ip: ip, opAdmin: opAdminInstance, trace: content)

        try {
            sysLog.save flush: true
        } catch (Exception e) {
            println "[SysLogUtils.trace] ERROR >>> " + e.toString()
        }

        println "[SysLogUtils.trace] >>> " + sysLog
    }
}
