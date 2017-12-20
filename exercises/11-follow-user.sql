-- Insert a new record to the "follows" table, indicating that a user has
-- followed another user.
--
-- You have access to the following variables which can be used as placeholders
-- for actual values:
--     - following
--     - follower
--
-- Write your query below:
INSERT INTO follows (following, follower) VALUES (
	(SELECT email FROM users where email = '{{following}}'),
	(SELECT email FROM users where email = '{{follower}}')
	);
