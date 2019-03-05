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
    private String[] complCourses;

    public void save() {
        String cc = "";
        for (String s : complCourses) {
            cc += s + ",";
        }
        student.setCompletedcourse(cc);
        service.saveOrUpdate(student);
    }

    public void edit() {
        service.saveOrUpdate(student);
    }

    public void del() {
        service.delete(student);
    }

    public Student searchById() {
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

    public String[] getComplCourses() {
        return complCourses;
    }

    public void setComplCourses(String[] complCourses) {
        this.complCourses = complCourses;
    }

}
