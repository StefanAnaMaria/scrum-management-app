SELECT S.SprintID, S.SprintName, S.SprintStatus, SUM(T.EstimatedHours) AS TotalEstimatedHours, SUM(T.ActualHours) AS TotalActualHours, SUM(T.EstimatedHours - T.ActualHours) AS RemainingHours
FROM Tasks AS T INNER JOIN Sprints AS S ON T.SprintID = S.SprintID
GROUP BY S.SprintID, S.SprintName, S.SprintStatus
ORDER BY S.SprintID;
