CREATE TABLE choices
(
    id          BIGINT       NOT NULL,
    choice_text VARCHAR(255) NOT NULL,
    is_correct  BOOLEAN,
    CONSTRAINT pk_choices PRIMARY KEY (id)
);

CREATE TABLE questions
(
    id   BIGINT NOT NULL,
    text VARCHAR(255),
    CONSTRAINT pk_questions PRIMARY KEY (id)
);

CREATE TABLE questions_choices
(
    question_id BIGINT NOT NULL,
    choice_id   BIGINT NOT NULL
);

ALTER TABLE questions_choices
    ADD CONSTRAINT fk_questions_choices_on_question_dbo FOREIGN KEY (question_id) REFERENCES questions (id);

CREATE TABLE response_choices
(
    response_id BIGINT NOT NULL,
    choice_id   BIGINT NOT NULL
);

ALTER TABLE response_choices
    ADD CONSTRAINT fk_response_choices_on_response_dbo FOREIGN KEY (response_id) REFERENCES responses (id);

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

CREATE TABLE sessions_responses
(
    session_id  BIGINT NOT NULL,
    response_id BIGINT NOT NULL
);

ALTER TABLE sessions_responses
    ADD CONSTRAINT fk_sessions_responses_on_quiz_session_dbo FOREIGN KEY (session_id) REFERENCES sessions (id);