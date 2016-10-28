SELECT   a.BusGroup
		--,a.Board_Name
		--,ServiceType
		,ServiceSubType 
		,CntType = COUNT(ServiceSubType)
FROM dbo.v_rpt_Service_Summary a
INNER JOIN dbo.v_rpt_ServiceBoard b
	ON a.SR_Board_RecID = b.SR_Board_RecID
WHERE a.Closed_Flag = 0
	--AND a.Board_Name NOT IN ('XXXXtest board')
	--AND b.Inactive_Flag = 0
	AND a.BusGroup = 'App Support'
	--AND ServiceType='EHR'
	--AND ServiceSubType='Allergy Module'
<<<<<<< HEAD
--GROUP BY a.BusGroup,/*Board_Name, Servicetype,*/ ServiceSubType
--ORDER BY /*Board_Name,ServiceType,*/ ServiceSubType
=======
GROUP BY a.BusGroup,/*Board_Name, Servicetype,*/ ServiceSubType
--ORDER BY /*Board_Name,ServiceType,*/ ServiceSubType
>>>>>>> origin/master
