package com.subtitlor.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;

public class Login extends HttpServlet {
    private static final long   serialVersionUID = 1L;
    private static final String VIEW1            = "/login.jsp";
    private static final String VIEW2            = "";

    @Override
    public void init() throws ServletException {

    }

    @Override
    protected void doGet( final HttpServletRequest request, final HttpServletResponse response )
            throws ServletException, IOException {
        /* Récupération de la date courante */
        DateTime dt = new DateTime();
        /* Conversion de la date en String selon le format défini */
        org.joda.time.format.DateTimeFormatter formatter = DateTimeFormat.forPattern( "dd/MM/yyyy HH:mm:ss" );
        String date = dt.toString( formatter );
        this.getServletContext().getRequestDispatcher( VIEW1 ).forward( request, response );
    }

    @Override
    public void doPost( final HttpServletRequest request, final HttpServletResponse response )
            throws ServletException, IOException {

        this.getServletContext().getRequestDispatcher( VIEW2 ).forward( request, response );
    }
}
