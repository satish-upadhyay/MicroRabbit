/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Id]
      ,[FromAccount]
      ,[ToAccount]
      ,[TransferAmount]
  FROM [TransferDB].[dbo].[TransferLogs]

  Delete from [TransferDB].[dbo].[TransferLogs]
  DBCC CHECKIDENT ('[TransferDB].[dbo].[TransferLogs]',RESEED,0)

  insert into [TransferLogs]([FromAccount],[ToAccount],[TransferAmount])
  values(1,2,'5.10')
   insert into [TransferLogs]([FromAccount],[ToAccount],[TransferAmount])
  values(2,1,'15.20')