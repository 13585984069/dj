package com; /**
 * @author JJChen
 * @version 1.0
 */

import com.Bean.Monster;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "data", value = "/data")
public class data extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Monster c = new Monster(1,"c", 1500);
        Monster j = new Monster(2,"j", 3000);
        Monster d = new Monster(3,"d", 5000);
        Monster[] monsters = new Monster[3];
        monsters[0] = c;
        monsters[1] = j;
        monsters[2] = d;
        request.setAttribute("monsters", monsters);
        request.getRequestDispatcher("/show.jsp").forward(request,response);
    }
}
