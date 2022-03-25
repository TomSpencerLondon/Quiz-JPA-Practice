CREATE TABLE choices
(
    id          BIGINT  NOT NULL,
    question_id BIGINT,
    choice_text VARCHAR(255),
    is_correct  BOOLEAN NOT NULL,
    response_id BIGINT,
    CONSTRAINT pk_choices PRIMARY KEY (id)
);

ALTER TABLE choices
    ADD CONSTRAINT FK_CHOICES_ON_QUESTION FOREIGN KEY (question_id) REFERENCES questions (id);

ALTER TABLE choices
    ADD CONSTRAINT FK_CHOICES_ON_RESPONSE FOREIGN KEY (response_id) REFERENCES responses (id);

CREATE TABLE questions
(
    id   BIGINT NOT NULL,
    text VARCHAR(255),
    CONSTRAINT pk_questions PRIMARY KEY (id)
);

CREATE TABLE responses
(
    id BIGINT NOT NULL,
    CONSTRAINT pk_responses PRIMARY KEY (id)
);
CREATE TABLE sessions
(
    id                  BIGINT NOT NULL,
    token               VARCHAR(255),
    current_question_id BIGINT,
    CONSTRAINT pk_sessions PRIMARY KEY (id)
);

