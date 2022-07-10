
# Get Security event log EventID 4624

$select = @"
SELECT TimeGenerated, EventId, EventType,
  EXTRACT_TOKEN(Strings, 0, '|') AS SubjectUserSID,
  EXTRACT_TOKEN(Strings, 1, '|') AS SubjectUserName, 
  EXTRACT_TOKEN(Strings, 2, '|') AS SubjectDomainName, 
  EXTRACT_TOKEN(Strings, 3, '|') AS SubjectLogonId, 
  EXTRACT_TOKEN(Strings, 4, '|') AS TargetUserSid, 
  EXTRACT_TOKEN(Strings, 5, '|') AS TargetName,
  EXTRACT_TOKEN(Strings, 6, '|') AS TargetDomainName,
  EXTRACT_TOKEN(Strings, 7, '|') AS TargetLogonId,
  EXTRACT_TOKEN(Strings, 8, '|') AS LogonType,
  EXTRACT_TOKEN(Strings, 9, '|') AS LogonProcessName,
  EXTRACT_TOKEN(Strings, 11, '|') AS WorkstationName,
  EXTRACT_TOKEN(Strings, 17, '|') AS ProcessName,
  EXTRACT_TOKEN(Strings, 18, '|') AS IpAddress,
  EXTRACT_TOKEN(Strings, 19, '|') AS IpPort
INTO 
  sec2.csv FROM '.\sec.bak.evtx' 
WHERE 
  EventID IN (4624)
"@

logparser.exe $select -i:EVT -headers:ON