package com.mhd.bean;

import com.mhd.entity.Student;
import com.mhd.service.StudentService;
import java.util.ArrayList;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

@ManagedBean
@ViewScoped
public class StudentBean {
    
    private StudentService service = new StudentService();
    private Student student;
    private List<Student> list;
    private String[] completedCourses;
    
    public void save() {
        String cc = "";
        for (String s : completedCourses) {
            cc += s + ", ";
        }
        student.setCompletedCourses(cc);
        service.saveOrUpdate(student);
        student = new Student();
    }
    
    public void edit() {
        service.saveOrUpdate(student);
        student = new Student();
    }
    
    public void del() {
        service.delete(student);
    }
    
    public Student searchById(){
        Student s = new Student();
        s = service.getById(student.getId());
        return s;
    }
    
    public StudentService getService() {
        return service;
    }
    
    public void setService(StudentService service) {
        this.service = service;
    }
    
    public Student getStudent() {
        if (student == null) {
            student = new Student();
        }
        return student;
    }
    
    public void setStudent(Student student) {
        this.student = student;
    }
    
    public List<Student> getList() {
        list = new ArrayList<>();
        list = service.getList();
        return list;
    }
    
    public void setList(List<Student> list) {
        this.list = list;
    }
    
    public String[] getCompletedCourses() {
        return completedCourses;
    }
    
    public void setCompletedCourses(String[] completedCourses) {
        this.completedCourses = completedCourses;
    }
    
}
