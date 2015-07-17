package com.youcrm.interceptor.user;

/**
 * Created by Dell 15R on 10-07-2015.
 */
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import java.util.Map;

public class UserLoginInterceptor extends AbstractInterceptor{


    @Override
    public String intercept(ActionInvocation invocation) throws Exception {

        Map<String,Object> session = invocation.getInvocationContext().getSession();

        String loginId = (String) session.get("loginId");
        if (loginId == null)
        {
            System.out.print("in if");
            return Action.LOGIN;
        }
        else
        {
            System.out.print("in else");
            return invocation.invoke();
        }


    }
}
