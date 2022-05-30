create or replace procedure output_message(message varchar)
returns varchar not null
language sql
as
begin
  return message;
end;

{{output_message()}}