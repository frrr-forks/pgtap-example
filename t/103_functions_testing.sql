BEGIN;

SELECT plan(3 + 3);

SELECT diag('The `length()` test suite.');

SELECT is(2, length('Hi'), 'The length of "Hi" is 2.');
SELECT is(5, length('Hello'), 'The length of "Hello" is 5.');
SELECT is(13, length('Hello, World!'), 'The length of "Hello, World!" is 13.');


SELECT diag('The `coalesce()` test suite.');

SELECT is('Hi', coalesce(NULL, 'Hi'), $$The value of `coalesce(NULL, 'Hi')` is 'Hi'.$$);
SELECT is('Hello', coalesce(NULL, NULL, 'Hello'), $$The value of `coalesce(NULL, NULL, 'Hello')` is 'Hello'.$$);
SELECT is('Hi', coalesce(NULL, 'Hi', 'Hello'), $$The value of `coalesce(NULL, 'Hi', 'Hello')` is 'Hi'.$$);

SELECT *
FROM finish();

ROLLBACK;
