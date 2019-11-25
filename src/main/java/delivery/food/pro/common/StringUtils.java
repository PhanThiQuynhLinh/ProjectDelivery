package delivery.food.pro.common;

import java.util.regex.Pattern;

public class StringUtils {

    /**
     * Checkk email
     * 
     * @param email
     * @return boolean
     */
    public static boolean isEmail(String email) {
        return Pattern.compile("^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+.[a-zA-Z0-9-.]+$").matcher(email).matches();
    }
    
    /**
     * Check password
     * 
     * @param password
     * @return boolean
     */
    public static boolean isPassword(String password) {
        return Pattern.compile("^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[#$^+=!*()@%&]).{8,32}$").matcher(password).matches();
    }
    
    /**
     * Check empty
     * 
     * @param str
     * @return boolean
     */
    public static boolean isEmpty(String str) {
        if(str == null || "".equals(str)) {
            return true;
        }
        return false;
    }
}
