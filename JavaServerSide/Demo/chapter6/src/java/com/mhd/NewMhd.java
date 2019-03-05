
package com.mhd;

import java.io.IOException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class NewMhd extends SimpleTagSupport{
    @Override
    public void doTag() throws JspException, IOException{
        getJspContext().getOut().write("Hi, how are you.?");
    }
    
}
