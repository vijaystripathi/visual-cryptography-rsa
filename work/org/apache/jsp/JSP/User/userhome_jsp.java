/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.35
 * Generated at: 2014-06-06 09:56:20 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.JSP.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class userhome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<title>Image_VC_RSA</title>\r\n");
      out.write("<meta name=\"keywords\" content=\"HTML, CSS, Design Gallery, CSS Template, Free Download, Website Layout\" />\r\n");
      out.write("<meta name=\"description\" content=\"Beautiful Design Gallery, CSS Template, Free Download\" />\r\n");
      out.write("<link href=\"templatemo_style1.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("<!--\r\n");
      out.write("\r\n");
      out.write("javascript:window.history.forward(-1);\r\n");
      out.write("// -->\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");


String name = (String)session.getAttribute("Name");
String id = (String)session.getAttribute("user");


      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<IMG SRC=\"Images/J2EE_Top copy.jpg\" width=100% height=\"60%\" BORDER=\"0\" ALT=\"\" >\r\n");
      out.write("\r\n");
      out.write("<!--  Free CSS Templates from www.templatemo.com -->\r\n");
      out.write("\t<div id=\"templatemo_background_top\">\r\n");
      out.write("    \r\n");
      out.write("\t\t<div class=\"templatemo_container\">\r\n");
      out.write("        \r\n");
      out.write("        \t<div id=\"templatemo_header\">\r\n");
      out.write("        \t<p style=\"color: red;position: absolute;left: 900px;\">Welcome, ");
      out.print(name);
      out.write("</p>\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            <div class=\"templatemo_content\">\r\n");
      out.write("            \t<div id=\"templatemo_content_white_top\">\r\n");
      out.write("                \t<div id=\"templatemo_menu\">\r\n");
      out.write("        \t\t\t\t<ul>\r\n");
      out.write("                            <li><a href=\"");
      out.print(request.getContextPath() );
      out.write("/UserProfile?name=");
      out.print(id);
      out.write("\"  class=\"current\" target=\"action\">User Profile</a></li>\r\n");
      out.write("                            <li><a href=\"");
      out.print(request.getContextPath() );
      out.write("/JSP/User/select_type.jsp\" target=\"action\" >Encrypt</a></li>\r\n");
      out.write("                            <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/JSP/User/compose_mail.jsp\" target=\"action\">Email</a></li>\r\n");
      out.write("                            <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/JSP/User/browse_decrypt_img.jsp\" target=\"action\">Decrypt</a></li>  \r\n");
      out.write("                           \r\n");
      out.write("                            <li><a href=\"");
      out.print(request.getContextPath() );
      out.write("/ChangePass2?name=");
      out.print(id);
      out.write("&no=1&id=");
      out.print(id );
      out.write("\" target=\"action\">ChangePass</a></li>                 \r\n");
      out.write("                            <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/SignOut?no=1\" class=\"lastmenu\" >LogOut</a></li>            \r\n");
      out.write("                        </ul>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div id=\"templatemo_content_white_middle\">\r\n");
      out.write("                \t<div class=\"templatemo_post_area\">\r\n");
      out.write("                    <iframe style=\"width: 750px;height: 380px;border-color: red;\" align=\"top\" name=\"action\" >\r\n");
      out.write("                    \r\n");
      out.write("                    \r\n");
      out.write("                    </iframe>\r\n");
      out.write("                    \t\r\n");
      out.write("                    </div><!-- End Of Post Area -->\r\n");
      out.write("                </div><!-- End Of Content Middle -->\r\n");
      out.write("            </div><!-- End Of Content -->\r\n");
      out.write("        </div><!-- End Of Container --> \r\n");
      out.write("    </div><!-- End Of Background Top --> \r\n");
      out.write("\t<div id=\"templatemo_background_middle\">\r\n");
      out.write("    \t<div class=\"templatemo_container\">\r\n");
      out.write("        \t<div class=\"templatemo_content\">\r\n");
      out.write("                <div id=\"templatemo_content_white_blue_joint\">\r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("            </div>\r\n");
      out.write("        </div><!-- End Of Container --> \r\n");
      out.write("    <!--  Download CSS Templates from www.templatemo.com -->  \r\n");
      out.write("\t</div><!-- End Of Background Middle --> \r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
