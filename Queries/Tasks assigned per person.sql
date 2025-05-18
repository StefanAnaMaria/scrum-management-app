SELECT Users.FullName, COUNT(Tasks.TaskID) AS TotalTasks
FROM Users INNER JOIN Tasks ON Users.UserID = Tasks.AssignedTo
GROUP BY Users.FullName
ORDER BY COUNT(Tasks.TaskID) DESC;
