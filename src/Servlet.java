import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by league on 11/2/16.
 */
public class Servlet extends HttpServlet {

    static int staticCounter = 0;
    int dynamicCounter = 0;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        java.io.PrintWriter output = response.getWriter();
        output.println("<!DOCTYPE html>\n" +
                "<html>\n" +
                "<head>\n" +
                "<title>Page Title</title>\n" +
                "</head>\n" +
                "<body>\n" +
                "\n" +
                "<h1>My First Heading</h1>\n" +
                "<p>My first paragraph.</p>\n" +
                "\n" +
                "</body>\n" +
                "</html>");


//        output.println("Hello, World!");
//        staticCounter++;
//        dynamicCounter++;
//        output.format("%d %d", staticCounter, dynamicCounter);
//        output.println(request.getParameter("number"));
    }
}
