package cn.itcats.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet",urlPatterns = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*
        * 1.获取表单数据
        * */
        //处理中文编码问题
        request.setCharacterEncoding("utf-8");
        //获取
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        /*
        * 2.校验用户名和密码是否正确
        * */
        if("joe".equalsIgnoreCase(username)){
            /*
            * 附加项：把用户名保存到cookie中，发送给客户端浏览器
            * 当再次打开客户端浏览器时，login.jsp中会读取request中的cookie，把他显示到用户文本框中
            * */
            Cookie cookie = new Cookie("uname", username);//创建cookie
            cookie.setMaxAge(60*60*24);//设置Cookie命长为一天
            response.addCookie(cookie);//保存cookie


            /*
            * 登录成功
            * >保存用户信息到session中
            * >重定向到succ1.jsp中
            * */
            HttpSession session = request.getSession();//获取session
            session.setAttribute("username",username);//存储用户名
            response.sendRedirect("/session2/succ1.jsp");//重定向
        }
        else{
            /*
            * 登录失败
            * >保存错误信息到request中
            * >转发到login.jsp中
            * */
            request.setAttribute("msg","用户名或密码错误! ");
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/session2/login.jsp");//得到转发器
            requestDispatcher.forward(request,response);//转发



        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
