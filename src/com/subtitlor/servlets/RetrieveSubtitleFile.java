package com.subtitlor.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.subtitlor.dao.DAOConfigurationException;
import com.subtitlor.dao.DaoException;
import com.subtitlor.dao.DaoFactory;
import com.subtitlor.dao.FileDao;
import com.subtitlor.utilities.CustomizedString;

public class RetrieveSubtitleFile extends HttpServlet {

    private static final long   serialVersionUID = 1L;
    private static final String VIEW1            = "/WEB-INF/displaySubtitleFile.jsp";
    private static final String VIEW2            = "/WEB-INF/modifSubtitle.jsp";
    private FileDao             fileDao;

    @Override
    public void init() throws ServletException {
        DaoFactory daoFactory = null;
        try {
            daoFactory = DaoFactory.getInstance();
        } catch ( DAOConfigurationException e ) {
            e.printStackTrace();
        }
        this.fileDao = daoFactory.getFileDao();
    }

    @Override
    protected void doGet( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException {
        String isFinished = request.getParameter( "finished" );
        List<CustomizedString> listSubtitlesFiles = null;
        request.getSession().setAttribute( "passageParRetrieve", "passageParRetrieve" );
        List<CustomizedString> listSubtitlesAllTranslatedFiles = new ArrayList<CustomizedString>();
        try {
            listSubtitlesFiles = fileDao.retrieveDbSubtitlesFiles();
        } catch ( DaoException e ) {
            request.setAttribute( "errorDB", e.getMessage() );
        }
        CustomizedString customizedString = null;
        if ( listSubtitlesFiles != null ) {
            if ( ( isFinished != null ) && ( isFinished.equals( "Yo" ) ) ) {
                for ( int i = 0; i < listSubtitlesFiles.size(); i++ ) {
                    customizedString = listSubtitlesFiles.get( i );
                    if ( customizedString.isTranslationFinished() ) {
                        listSubtitlesAllTranslatedFiles.add( customizedString );
                    }
                }
                request.setAttribute( "listFiles", listSubtitlesAllTranslatedFiles );
                request.setAttribute( "erreurPasTradFinies", "Il n\'y a pas de traduction terminée" );
            } else {
                request.setAttribute( "listFiles", listSubtitlesFiles );
            }
        } else {
            request.setAttribute( "erreurDisplay", "il n'y a pas de fichier disponible" );
        }
        this.getServletContext().getRequestDispatcher( VIEW1 ).forward( request, response );
    }

    @Override
    public void doPost( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher( VIEW2 ).forward( request, response );
    }
}
