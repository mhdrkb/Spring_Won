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
    private List<Student> studentList;
    private String[] copletedCourses;

    public void save() {
        String cc = "";
        for (String s : copletedCourses) {
            cc += s + ", ";
        }
        student.setComplCourse(cc);
        service.saveOrUpdate(student);
    }

    public void edit() {
        service.saveOrUpdate(student);
    }

    public void delete() {
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

    public List<Student> getStudentList() {
        studentList = new ArrayList<>();
        studentList = service.getList();
        return studentList;
    }

    public void setStudentList(List<Student> studentList) {
        this.studentList = studentList;
    }

    public String[] getCopletedCourses() {
        return copletedCourses;
    }

    public void setCopletedCourses(String[] copletedCourses) {
        this.copletedCourses = copletedCourses;
    }

}
