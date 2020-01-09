package com.dd.service;

import com.dd.entities.Question;

public interface QuestionService {
	
	public Iterable<Question> findAll();
	
	public int findAnswerIdCorrect(int questionId);

}
