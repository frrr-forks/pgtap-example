BEGIN;

SELECT plan(3); -- Number of tests in this test suite.

SELECT pass('This is a simpliest passing test example.');
SELECT fail('This is a simpliest failing test example.');

-- ok(boolean expr, textual description)
SELECT ok(1 + 2 = 3, 'Sure, 1 + 2 is 3.');

SELECT *
FROM finish();

ROLLBACK;
