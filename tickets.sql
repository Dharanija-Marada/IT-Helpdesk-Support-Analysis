CREATE DATABASE helpdesk_analysis;

USE helpdesk_analysis;

SELECT COUNT(*) FROM tickets_final;

SELECT * FROM tickets_final LIMIT 10;

SELECT COUNT(*) AS Total_Tickets FROM tickets_final;

SELECT AVG(Resolution_Hours) AS Avg_Resolution_Hours FROM tickets_final;

SELECT Ticket_Status, COUNT(*) 
FROM tickets_final
GROUP BY Ticket_Status;

SELECT 
ROUND(SUM(CASE WHEN Resolution_Hours <= 24 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) 
AS SLA_Percentage
FROM tickets_final;

SELECT Ticket_Priority, COUNT(*) 
FROM tickets_final
GROUP BY Ticket_Priority
ORDER BY COUNT(*) DESC;

SELECT AVG(Customer_Satisfaction_Rating) AS Avg_CSAT FROM tickets_final;

SELECT Ticket_Channel, AVG(Resolution_Hours) 
FROM tickets_final
GROUP BY Ticket_Channel;

