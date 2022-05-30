CREATE or replace procedure output_message(message varchar)
RETURNS varchar not null
language sql
as
begin
  return message;
end;

call output_message('Hello World');