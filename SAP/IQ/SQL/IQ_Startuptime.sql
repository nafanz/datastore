select @@servername as Hostname, CURRENT TIMESTAMP AS TimeStamp, substring(VALUE,1,40) AS StartTime, SECONDS(VALUE, CURRENT TIMESTAMP) AS RuntimeSeconds FROM SA_ENG_PROPERTIES() WHERE PropName = 'StartTime';