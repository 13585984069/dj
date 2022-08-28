package com;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author JJChen
 * @version 1.0
 */
public class pan {
    public static boolean isDigit(String str){
        String regStr = "\\d+";
        int case1 = 3;
        Pattern compile = Pattern.compile(regStr);
        Matcher matcher = compile.matcher(str);
        if(matcher.find()){
            return true;
        }
        return false;
    }
    public static void ce(String cal){
        switch (cal){
            case "add"->{
//                res=num1+num2;
                cal = "+";
            }
            case "minus"->{
//                res=num1-num2;
                cal = "-";
            }
            case "multi"->{
//                res=num1*num2;
                cal = "*";
            }
            case "div"->{
//                res=num1/num2;
                cal="/";
            }
        }
        System.out.println(cal);
    }

    public static void main(String[] args) {
        pan.ce("add");
    }
}
