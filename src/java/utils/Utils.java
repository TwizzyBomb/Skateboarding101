/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package utils;

/**
 *
 * @author TwizzyBomb
 */
public class Utils {
    static String contact = "<p>Adrian Brocke<p>203 555 - 5555<p>adrian.brocke@gmail.com";
    public static String getFooter(){
        StringBuilder sb = new StringBuilder(2048);
        sb.append("<table style=\"min-height:0\" border=\"1px\" width=\"100%\" cellpadding=\"4px\">\n");
        sb.append("<tr>");
        sb.append("<td>Contact US!</td>");
        sb.append("<td>Get Started<p>packages</td>");
        sb.append("<td>Social Media!</td>");
        sb.append("</tr>");
        sb.append("<tr>");
        sb.append("<td>"+ contact + "</td>" + "<td> <a href=\"\" rel=\"\">link</a> </td>" + "<td>Facebook Stuff</td>");
        sb.append("</tr>");
        sb.append("</table>\n");
        
        return sb.toString();
    
    }

    
}
