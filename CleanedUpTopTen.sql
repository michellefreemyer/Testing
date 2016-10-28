SELECT   a.BusGroup
		,ServiceSubType 
		,CntType = COUNT(ServiceSubType)
FROM dbo.v_rpt_Service_Summary a
INNER JOIN dbo.v_rpt_ServiceBoard b
	ON a.SR_Board_RecID = b.SR_Board_RecID
WHERE a.Closed_Flag = 0
	AND a.BusGroup = 'App Support'
GROUP BY a.BusGroup,ServiceSubType
ORDER BY ServiceSubType