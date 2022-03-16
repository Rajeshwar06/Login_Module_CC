package com.Recommendation;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Recommendation.dao.RecomDao;

/**
 * Servlet implementation class Recom
 */
@WebServlet("/Recom")
public class Recom extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String genere = request.getParameter("item");
		ArrayList<String> Series = new ArrayList<>();
		System.out.println(genere);
		RecomDao ob = new RecomDao();
		Series = ob.check(genere);
		System.out.println("In Recom" + Series.size());
		for(String s : Series) {
			System.out.println(s);
		}
		request.setAttribute("Series",Series);
		RequestDispatcher rd = request.getRequestDispatcher("Result.jsp");
		
		 rd.forward(request, response);
		
	}

}
