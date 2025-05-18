SELECT ProjectStatus, COUNT(ProjectID) AS TotalProjects
FROM Projects
GROUP BY ProjectStatus
ORDER BY COUNT(ProjectID) DESC;
