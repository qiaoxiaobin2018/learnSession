import org.junit.jupiter.api.Test;

import java.util.UUID;

public class UUIDTest {
    @Test
    public void fun1(){
        UUID uuid = UUID.randomUUID();
        String s = uuid.toString();
        //去掉'-'
        //System.out.println(s);
        s = s.replace("-","");
        s = s.toUpperCase();
        System.out.println(s);

        System.out.println(commonUtils.uuid());
    }
}
