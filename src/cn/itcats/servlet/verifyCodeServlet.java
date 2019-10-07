package cn.itcats.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;

@WebServlet(name = "verifyCodeServlet",urlPatterns = "/verifycodeservlet")
public class verifyCodeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*
        * 获取图片验证码
        * */
        VerifyCode verifyCode = new VerifyCode();
        BufferedImage image = verifyCode.getImage();
        //向Session中存储验证码
        request.getSession().setAttribute("verifycode",verifyCode.getText());
        //返回验证码图片
        verifyCode.output(image,response.getOutputStream());


    }
}
