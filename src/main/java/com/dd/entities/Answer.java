package com.dd.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="answer")
public class Answer implements java.io.Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id")   
	private Integer id;
	
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="question_id")
	private Question question;
    
    @Column(name="content")
    private String content;
    
    @Column(name="correct")
    private boolean correct;
    
    public Answer() {
    }
    
    public Answer(Question question,String content,boolean correct) {
    	this.question=question;
    	this.content=content;
    	this.correct=correct;
    }

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public boolean isCorrect() {
		return correct;
	}

	public void setCorrect(boolean correct) {
		this.correct = correct;
	}
}
