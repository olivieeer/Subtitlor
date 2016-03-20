package com.subtitlor.utilities;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.subtitlor.bean.TradFileRecord;

public class HibernateUtil {

    private static final SessionFactory sessionFactory = buildSessionFactory();

    private static SessionFactory buildSessionFactory() {
        try {
            // Create the SessionFactory from hibernate.cfg.xml
            return new Configuration().configure().buildSessionFactory();
        } catch ( Throwable ex ) {
            // Make sure you log the exception, as it might be swallowed
            System.err.println( "Initial SessionFactory creation failed." + ex );
            throw new ExceptionInInitializerError( ex );
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public static void shutdown() {
        // Close caches and connection pools
        getSessionFactory().close();
    }

    public static void createRecord() {

        Session session = null;

        try {
            // This step will read hibernate.cfg.xml and prepare hibernate for
            // use
            SessionFactory sessionFactory = new Configuration().configure()
                    .buildSessionFactory();
            session = sessionFactory.openSession();
            // Create new instance of Contact and set values in it by reading
            // them from form object
            System.out.println( "Inserting Record" );
            TradFileRecord trd = new TradFileRecord();
            Transaction tx = session.beginTransaction();
            trd.setOriginalLine1( "aaaaa" );
            trd.setOriginalLine2( "bbbbb" );
            trd.setTranslatedLine1( "rrrrrrrr" );
            trd.setTranslatedLine2( "tttttttt" );
            trd.setDescriptionFile( "Thierry" );
            trd.setFileName( "Duchassin" );
            session.save( trd );
            tx.commit();
            System.out.println( "Done" );
        } catch ( Exception e ) {
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }

    }
    // public static void configureUsingHibernateConfigXMLFile() {
    // // Create configuration instance
    // Configuration configuration = new Configuration();
    //
    // // Pass hibernate configuration file
    // configuration.configure( "hibernate.cfg.xml" );
    //
    // // Since version 4.x, service registry is being used
    // ServiceRegistry serviceRegistry = new ServiceRegistryBuilder()
    // .applySettings( configuration.getProperties() ).build();
    //
    // // Create session factory instance
    // SessionFactory factory = configuration.buildSessionFactory(
    // serviceRegistry );
    //
    // // Get current session
    // Session session = factory.getCurrentSession();
    //
    // // Begin transaction
    // session.getTransaction().begin();
    //
    // // Print out all required information
    // System.out.println( "Session Is Opened :: " + session.isOpen() );
    // System.out.println( "Session Is Connected :: " + session.isConnected() );
    //
    // // Commit transaction
    // session.getTransaction().commit();
    //
    // System.exit( 0 );
    // }

    // public static void configureUsingHibernatePropertiesFile() throws
    // IOException {
    // // Create configuration instance
    // Configuration configuration = new Configuration();
    //
    // // Create properties file
    // Properties properties = new Properties();
    // properties.load(
    // Thread.currentThread().getContextClassLoader().getResourceAsStream(
    // "hibernate.properties" ) );
    // // Pass hibernate properties file
    // configuration.setProperties( properties );
    // // Since version 4.x, service registry is being used
    // ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
    // .applySettings( configuration.getProperties() ).build();
    //
    // // Create session factory instance
    // SessionFactory factory = configuration.buildSessionFactory(
    // serviceRegistry );
    //
    // // Get current session
    // Session session = factory.getCurrentSession();
    //
    // // Begin transaction
    // session.getTransaction().begin();
    //
    // // Print out all required information
    // System.out.println( "Session Is Opened :: " + session.isOpen() );
    // System.out.println( "Session Is Connected :: " + session.isConnected() );
    //
    // // Commit transaction
    // session.getTransaction().commit();
    //
    // System.exit( 0 );
    // }

}
