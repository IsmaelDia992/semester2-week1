# Task 2

## Exercises

1. List all posts that have been deleted.
SELECT content FROM posts WHERE deleted = 1;

2. List all users whose usernames begin with 'a'.

3. Find all posts and the usernames of those who posted them whose content contains the word "small".
SELECT content, username FROM users JOIN posts ON users.id = user_id WHERE content LIKE '%small%';

4. Return each non-deleted post and the username of the person who wrote in, in date order.

5. For each user, return their username and the total number of posts they have made.
SELECT username, COUNT(content) FROM users JOIN posts ON users.id = user_id GROUP BY username; 

6. Modify the previous query to return only users who have authored more than 3 posts.

7. For each user, return their username and the number of users they follow, including users who follow no one.

SELECT username, COUNT(following_user_id) AS total_following FROM users LEFT JOIN follows ON users.id = following_user_id GROUP BY username;

8. List the top 5 most-followed users.
9. Return a list showing the username of the follower and the username of the followed user for each follow relationship.

10. For a given user (christopherprice),
return all non-deleted posts written by users they follow,
ordered from most recent to oldest.

SELECT posts.content FROM users JOIN follows ON users.id = follows.following_user_id JOIN posts ON follows.followed_user_id = posts.user_id WHERE users.username = 'christopherprice' AND posts.deleted = 0 ORDER BY posts.created_on DESC;


## Diagram

![Database diagram of Social.](social.png)