/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mhd.service;

import com.mhd.entity.Student;
import com.mhd.utils.HibernateUtil;
import java.util.ArrayList;
import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Java
 */
public class StudentService {
    public static  void saveOrUpdate(Student student){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        Transaction tr = session.beginTransaction();
        session.saveOrUpdate(student);
        System.out.println("Student data saved successfully");
        tr.commit();
    }
    public static  void delete(Student student){
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        Transaction tr = session.beginTransaction();
        session.delete(student);
        System.out.println("Student data deleted successfully");
        tr.commit();
    }
    public static  Student getById(int id){
        Student student = new Student();
        try{
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        Transaction tr = session.beginTransaction();
        student = (Student) session.get(Student.class, id);
        tr.commit();
        }catch(Exception e){
            System.out.println("Something Wrong");
        }
        return student;
    }
    
    @Transactional
    public static List<Student> getList(){
        List<Student> students = new ArrayList<>();
        try{
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        Transaction tr = session.beginTransaction();
        students = session.createQuery("From Student").list();
        tr.commit();
        }catch(Exception e){
            System.out.println("Something wrong");
        }
        return students;
    }
}
