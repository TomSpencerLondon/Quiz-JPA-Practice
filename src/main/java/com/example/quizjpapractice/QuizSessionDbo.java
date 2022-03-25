package com.example.quizjpapractice;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;

@Entity
@Table(name = "sessions")
public class QuizSessionDbo {

  @Id
  @Column(name = "id", nullable = false)
  private Long id;

  @Column(name = "token")
  private String token;

  @Column(name = "current_question_id")
  private Long currentQuestionId;

  @ElementCollection
  @CollectionTable(name = "sessions_responses",
    joinColumns = @JoinColumn(name = "session_id", referencedColumnName = "id")
  )
  @Column(name = "response_id", nullable = false)
  private List<Long> responseIds = new ArrayList<>();

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public Long getCurrentQuestionId() {
    return currentQuestionId;
  }

  public void setCurrentQuestionId(Long currentQuestionId) {
    this.currentQuestionId = currentQuestionId;
  }

  public String getToken() {
    return token;
  }

  public void setToken(String token) {
    this.token = token;
  }

  public List<Long> getResponseIds() {
    return responseIds;
  }

  public void addResponseId(Long responseId) {
    this.responseIds.add(responseId);
  }
}
