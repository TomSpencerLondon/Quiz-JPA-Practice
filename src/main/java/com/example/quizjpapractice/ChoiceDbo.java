package com.example.quizjpapractice;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "choices")
public class ChoiceDbo {

  @Id
  @Column(name = "id", nullable = false)
  private Long id;

  @Column(nullable = false)
  private String choiceText;
  private boolean isCorrect;

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getChoiceText() {
    return choiceText;
  }

  public void setChoiceText(String choiceText) {
    this.choiceText = choiceText;
  }

  public boolean isCorrect() {
    return isCorrect;
  }

  public void setCorrect(boolean correct) {
    isCorrect = correct;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }

    ChoiceDbo choiceDbo = (ChoiceDbo) o;

    if (isCorrect != choiceDbo.isCorrect) {
      return false;
    }
    return choiceText.equals(choiceDbo.choiceText);
  }

  @Override
  public int hashCode() {
    int result = choiceText.hashCode();
    result = 31 * result + (isCorrect ? 1 : 0);
    return result;
  }
}
