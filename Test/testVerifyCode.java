import org.junit.jupiter.api.Test;

import java.io.FileOutputStream;
import java.io.OutputStream;

public class testVerifyCode {
    @Test
    public void fun1() throws Exception{
        VerifyCode verifyCode = new VerifyCode();
        verifyCode.output(verifyCode.getImage(), new FileOutputStream("C:\\Users\\JOE\\Desktop\\20191007.jpg"));
        System.out.println("验证码："+verifyCode.getText());
    }
}
