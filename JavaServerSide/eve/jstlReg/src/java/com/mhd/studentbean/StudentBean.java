package com.mhd.studentbean;

import com.mhd.entity.Student;
import com.mhd.services.StudentService;
import java.util.Date;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

@ManagedBean
@ViewScoped
public class StudentBean {

    private Student student;
    private String[] completedcourse;

    public void saveStu() {
        String comCors = "";
        for (String s : completedcourse) {
            comCors += s + ", ";
        }
        student.setCourses(comCors);
        student.setRegdate(new Date());
        
        StudentService service = new StudentService();
        service.saveStudent(student);
        System.out.println("Inserted Successfully");
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public String[] getCompletedcourse() {
        return completedcourse;
    }

    public void setCompletedcourse(String[] completedcourse) {
        this.completedcourse = completedcourse;
    }
    
}
