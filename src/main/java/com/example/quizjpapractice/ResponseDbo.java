package com.example.quizjpapractice;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "responses")
public class ResponseDbo {

  @Id
  @Column(name = "id", nullable = false)
  private Long id;

  @ElementCollection
  @CollectionTable(name = "response_choices",
    joinColumns = @JoinColumn(name = "response_id", referencedColumnName = "id")
  )
  @Column(name = "choice_id", nullable = false)
  Set<Long> choiceIds = new HashSet<>();

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public Set<Long> getChoiceIds() {
    return choiceIds;
  }

  public void addChoiceId(Long choiceId) {
    this.choiceIds.add(choiceId);
  }
}
