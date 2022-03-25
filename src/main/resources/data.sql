insert into questions(id, text)
values(1001, 'Question 1');

insert into questions(id, text)
values(1002, 'Question 2');

insert into choices(id, choice_text, is_correct)
values(2001, 'Choice 1', true);
insert into choices(id, choice_text, is_correct)
values(2002, 'Choice 2', false);
insert into choices(id, choice_text, is_correct)
values(2003, 'Choice 3', false);

insert into choices(id, choice_text, is_correct)
values(2004, 'Choice 1', true);
insert into choices(id, choice_text, is_correct)
values(2005, 'Choice 2', false);
insert into choices(id, choice_text, is_correct)
values(2006, 'Choice 3', false);

insert into sessions(id, token, current_question_id)
values(3001, 'token-1', 1002);

insert into responses(id)
values(4001);

insert into response_choices(RESPONSE_ID, choice_id)
values(4001, 2001);

insert into sessions_responses(session_id, response_id)
values(3001, 4001);


insert into QUESTIONS_CHOICES(question_id, choice_id)
values(1001, 2001);
insert into QUESTIONS_CHOICES(question_id, choice_id)
values(1001, 2002);
insert into QUESTIONS_CHOICES(question_id, choice_id)
values(1001, 2003);

insert into QUESTIONS_CHOICES(question_id, choice_id)
values(1002, 2004);
insert into QUESTIONS_CHOICES(question_id, choice_id)
values(1002, 2005);
insert into QUESTIONS_CHOICES(question_id, choice_id)
values(1002, 2006);