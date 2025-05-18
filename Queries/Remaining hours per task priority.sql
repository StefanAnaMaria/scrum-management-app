SELECT T.Priority, SUM(T.EstimatedHours - T.ActualHours) AS TotalRemainingHours
FROM Tasks AS T
GROUP BY T.Priority
ORDER BY T.Priority;
