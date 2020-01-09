package com.dd.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.dd.entities.Question;

@Repository("questionRepository")
public interface QuestionRepository extends CrudRepository<Question, Integer> {

}
