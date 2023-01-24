package com.nt.custom;
import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Page;

import com.nt.model.StudentDetails;

public class StudentPageableMap {
    private Page<StudentDetails> page;
    private List<StudentDetails> top2Student;

    public StudentPageableMap(Page<StudentDetails> page, List<StudentDetails> top2Student) {
        this.page = page;
        this.top2Student =top2Student;
    }

    public Page<StudentDetails> getPage() {
        return page;
    }

    public List<StudentDetails> getTop2Student() {
        return top2Student;
    }
}
