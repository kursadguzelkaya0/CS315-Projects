%option main

/* DEFINITIONS */
digit [0-9]
sign [+-]
int [+-]?[0-9]+
float [+-]?[0-9]*(\.)[0-9]+
letter_char [a-zA-Z]
spec_char [\?!@#\$%\^\&\*\(\)\+=/-\;\'\"\|\{\}\[\]\:\.\,<>~\-]
char \'({letter_char}|{spec_char}|" ")?\'
string \"({letter_char}|{spec_char}|" "|\\n)*\"
comment_sign_open \/\*
comment_sign_close \*\/
comment {comment_sign_open}([^\n])*{comment_sign_close}
id [a-zA-Z]+[\_a-zA-Z]*{digit}*

%%

@BEGIN printf("BEGIN ");
@END printf("END ");
int printf("INTEGER_TYPE ");
ptr printf("POINTER_TYPE ");
char printf("CHAR_TYPE ");
str printf("STRING_TYPE ");
float printf("FLOAT_TYPE ");
bool printf("BOOL_TYPE ");
if printf("IF ");
else printf("ELSE ");
for printf("FOR ");
while printf("WHILE ");
return printf("RETURN ");
true printf("TRUE ");
false printf("FALSE ");
const printf("CONST ");
void printf("VOID ");
AND printf("AND ");
OR printf("OR ");

ADD_SENSOR  printf("ADD_SENSOR ");
CHANGE_SENSOR_NAME printf("CHANGE_SENSOR_NAME ");
READ_SENSOR printf("READ_SENSOR ");
REMOVE_SENSOR printf("REMOVE_SENSOR ");
SEE_ALL_SENSORS printf("SEE_ALL_SENSORS ");
SET_SWITCH_ON printf("SET_SWITCH_ON ");
SET_SWITCH_OFF printf("SET_SWITCH_OFF ");
CREATE_URL_CONNECTION printf("CREATE_URL_CONNECTION ");
DISCONNECT_URL printf("DISCONNECT_URL ");
SEND_DATA printf("SEND_DATA ");
RECIEVE_DATA printf("RECIEVE_DATA ");
GET_CURR_TIMESTAMP printf("GET_CURR_TIMESTAMP ");
RESET_ALL_CONNECTIONS printf("RESET_ALL_CONNECTIONS ");
GET_SWITCH_STATUS printf("GET_SWITCH_STATUS ");
SEE_ALL_CONNECTIONS printf("SEE_ALL_CONNECTIONS ");

{int} printf("INTEGER ");
{float} printf("FLOAT ");
{char} printf("CHAR ");
{id} printf("IDENTIFIER ");
{string} printf("STRING ");
{comment} printf("COMMENT ");

\+ printf("PLUS_OP ");
\- printf("MINUS_OP ");
\* printf("MULTIPLY_OP ");
\/ printf("DIVIDE_OP ");
\% printf("MOD_OP ");
\= printf("ASSIGN_OP ");
\! printf("NOT ");
\< printf("LESS_THAN_OP ");
\> printf("GREATER_THAN_OP ");
\<\= printf("LESS_THAN_OR_EQUAL_OP ");
\>\= printf("GREATER_THAN_OR_EQUAL_OP ");
\+\= printf("PLUS_EQUAL_OP ");
\-\= printf("MINUS_EQUAL_OP ");
\/\= printf("DIVIDE_EQUAL_OP ");
\*\= printf("MULTIPLY_EQUAL_OP ");
\+\+ printf("INCREMENT ");
\-\- printf("DECREMENT ");
\=\= printf("IS_EQUALS_OP ");


\\n printf("NL ");
\, printf("COMMA ");
\[ printf("LSB ");
\] printf("RSB ");
\{ printf("LCB ");
\} printf("RCB ");
\( printf("LP ");
\) printf("RP ");
\: printf("COLON ");
; printf("SEMI_COLON ");

.;
