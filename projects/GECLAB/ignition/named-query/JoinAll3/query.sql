SELECT
  A.DateTime,
  A.Pow_Ana_SinglePhase1_Voltage AS Voltage,
  A.Pow_Ana_SinglePhase1_Current AS Curren,
  A.Pow_Ana_SinglePhase1_KVA AS KVA,
  A.Pow_Ana_SinglePhase1_KW AS KW,
  A.Pow_Ana_SinglePhase1_Power_Factor AS PF,
  A.Pow_Ana_SinglePhase1_Total_KW AS Total,
  A.Pow_Ana_SinglePhase1_Frequency AS Fr,
  AA.Pow_Ana_SinglePhase_New_fI1 AS fI1New,
  AA.Pow_Ana_SinglePhase_New_fU1 AS fU1New,
  AA.Pow_Ana_SinglePhase_New_I1 AS I1New,
  AA.Pow_Ana_SinglePhase_New_P1 AS P1New,
  AA.Pow_Ana_SinglePhase_New_Phi1 AS Phi1New,
  AA.Pow_Ana_SinglePhase_New_Q1 AS Q1New,
  AA.Pow_Ana_SinglePhase_New_S1 AS S1New,
  AA.Pow_Ana_SinglePhase_New_U1 AS U1New,
  B.Sensor1,
  B.Sensor2,
  B.Sensor3,
  B.Sensor4,
  B.Sensor5,
  B.Sensor6,
  B.Sensor7,
  B.Sensor8,
  C."Pow_Ana_ThreePhase1_Urms&#00931;" AS Urms,
  C."Pow_Ana_ThreePhase1_Irms&#00931;" AS Irms,
  C."Pow_Ana_ThreePhase1_Lambda&#00931;" AS Lambda,
  C."Pow_Ana_ThreePhase1_P&#00931;" AS P,
  C."Pow_Ana_ThreePhase1_S&#00931;" AS S,
  C."Pow_Ana_ThreePhase1_fU1" AS fU1,
  C."Pow_Ana_ThreePhase1_fI1" AS fI1,
  CC.Pow_Ana_ThreePhaseNew_fI1 AS fI1New3,
  CC.Pow_Ana_ThreePhaseNew_fU1 AS fU1New3,
  CC.Pow_Ana_ThreePhaseNew_I1 AS I1New3,
  CC."Pow_Ana_ThreePhaseNew_Irms&#00931;" AS IrmsNew3,
  CC."Pow_Ana_ThreePhaseNew_Lambda&#00931;" AS LambdaSigmaNew3,
  CC."Pow_Ana_ThreePhaseNew_P&#00931;" AS PSigmaNew3,
  CC.Pow_Ana_ThreePhaseNew_P1 AS P1New3,
  CC.Pow_Ana_ThreePhaseNew_Phi1 AS Phi1New3,
  CC.Pow_Ana_ThreePhaseNew_Q1 AS Q1New3,
  CC."Pow_Ana_ThreePhaseNew_S&#00931;" AS SNew3,
  CC.Pow_Ana_ThreePhaseNew_S1 AS S1New3,
  CC.Pow_Ana_ThreePhaseNew_U1 AS U1New3,
  CC."Pow_Ana_ThreePhaseNew_Urms&#00931;" AS UrmsNew3
FROM 
  SINGLEPHASEANALYSER A
LEFT JOIN 
SINGLEPHASEANALYSER_NEW AA
ON A.DateTime = AA.DateTime
LEFT JOIN 
  MEGHDOOT B 
    ON A.DateTime = B.DateTime
LEFT JOIN 
  THREEPHASEANALYSER C 
    ON A.DateTime = C.DateTime
LEFT JOIN 
  THREEPHASEANALYSER_NEW CC
	ON A.DateTime = CC.DateTime
WHERE 
  A.DateTime BETWEEN :StartDate AND :EndDate
ORDER BY 
  A.DateTime DESC;