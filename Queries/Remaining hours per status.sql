SELECT Tasks.TaskStatus, COUNT(Tasks.TaskID) AS TotalTasks, SUM(Tasks.EstimatedHours - Tasks.ActualHours) AS RemainingHours
FROM Tasks
GROUP BY Tasks.TaskStatus
ORDER BY COUNT(Tasks.TaskID) DESC;
