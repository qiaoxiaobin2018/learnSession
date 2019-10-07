import org.junit.jupiter.api.Test;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.FileOutputStream;

/*
* 动态生成图片
* */
public class ImageDemo1 {
    @Test
    public void fun1() throws Exception{
        /*
        * 1.创建图片缓冲区
        * 2.设置其宽高
        * 3.得到这个图片的绘制环境（得到画笔）
        * 4.保存起来
        * */
        BufferedImage bi = new BufferedImage(70, 35, BufferedImage.TYPE_INT_RGB);
        Graphics2D graphics = (Graphics2D)bi.getGraphics();//得到绘制环境
        graphics.setColor(Color.WHITE);//把环境设置为白色
        graphics.fillRect(0,0,70,35);//填充矩形
        graphics.setColor(Color.RED);//把环境设置为红色
        graphics.drawString("HELLO",10,20);//像图片上写入字符串
        ImageIO.write(bi,"JPEG",new FileOutputStream("C:\\Users\\JOE\\Desktop\\20191006.jpg"));

    }
}
