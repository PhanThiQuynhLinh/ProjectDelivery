package delivery.food.pro.common;

import java.math.BigInteger;
import java.security.MessageDigest;

import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

public class CommonUtils {
    
    /**
     * Check login
     * 
     * @return boolean
     */
    public static boolean isLogin(HttpSession session) {
        if(session != null && session.getAttribute(Constants.Key.USER) != null) {
            return true;
        }
        return false;
    }
    
    /**
     * md5hashing
     * 
     * @param text
     * @return string
     */
    public static String md5hashing(String text)
    {   String hashtext = null;
        try 
        {
            String plaintext = text;
            MessageDigest m = MessageDigest.getInstance("MD5");
            m.reset();
            m.update(plaintext.getBytes());
            byte[] digest = m.digest();
            BigInteger bigInt = new BigInteger(1,digest);
            hashtext = bigInt.toString(16);
            // Now we need to zero pad it if you actually want the full 32 chars.
            while(hashtext.length() < 32 ){
              hashtext = "0"+hashtext;   
            }
        } catch (Exception e1) 
        {
            // TODO: handle exception
            JOptionPane.showMessageDialog(null,e1.getClass().getName() + ": " + e1.getMessage());   
        }
        return hashtext;     
    }
}
