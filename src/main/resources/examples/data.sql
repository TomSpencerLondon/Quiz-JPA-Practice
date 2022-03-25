insert into questions(id, text)
values(1001, "Question 1");

insert into questions(id, text)
values(1002, "Question 2");

insert into choices(id, question_dbo_id, choice_text, is_correct)
values(2001, 1001, "Choice 1", true);
insert into choice_dbo(id, question_dbo_id, choice_text, is_correct)
values(2002, 1001, "Choice 2", false);
insert into choice_dbo(id, question_dbo_id, choice_text, is_correct)
values(2003, 1001, "Choice 3", false);

insert into choice_dbo(id, question_dbo_id, choice_text, is_correct)
values(2004, 1002, "Choice 1", true);
insert into choice_dbo(id, question_dbo_id, choice_text, is_correct)
values(2005, 1002, "Choice 2", false);
insert into choice_dbo(id, question_dbo_id, choice_text, is_correct)
values(2006, 1002, "Choice 3", false);

insert into quiz_session_dbo(id, token, current_question_id)
values(3001, "token-1", 1002);

insert into response_dbo(id)
values(4001);

insert into response_choices(response_dbo_id, choice_ids)
values(4001, 2001);

insert into quiz_session_dbo_responses(quiz_session_dbo_id, responses_id)
values(3001, 4001);