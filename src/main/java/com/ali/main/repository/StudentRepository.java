package com.ali.main.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ali.main.model.Student;

public interface StudentRepository extends JpaRepository<Student, Integer>{

	Student findByFirstname(String firstname);
}
