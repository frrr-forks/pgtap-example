BEGIN;

SELECT plan(4);

SELECT ok(1 = 1, '`ok` assertion example.');
SELECT is(1, 1, '`is` assertion example.');
SELECT isnt(1, 2, '`isnt` assertion example.');

SELECT isa_ok(1, 'integer', '`isa_ok` assertion example.');

SELECT *
FROM finish();

ROLLBACK;
