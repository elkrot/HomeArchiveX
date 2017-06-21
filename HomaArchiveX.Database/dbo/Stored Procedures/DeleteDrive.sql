
/*IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'DeleteDrive' 
)
   DROP PROCEDURE [dbo].[DeleteDrive]

   go*/


CREATE PROCEDURE [dbo].[DeleteDrive] 
@DriveId int
AS
BEGIN
 


BEGIN TRANSACTION;

BEGIN TRY
    -- Generate a constraint violation error.
delete from ImageToEntity where TargetEntityKey in(select ArchiveEntityKey from ArchiveEntity where 
isnull(DriveId,0)=@DriveId)
delete from [Image] where ImageKey in(select ImageKey from ImageToEntity where TargetEntityKey in(select ArchiveEntityKey from ArchiveEntity 
where isnull(DriveId,0)=@DriveId))
delete from ArchiveEntity where isnull(DriveId,0)=@DriveId
delete from Drive where DriveId=@DriveId
END TRY
BEGIN CATCH
    SELECT 
        ERROR_NUMBER() AS ErrorNumber
        ,ERROR_SEVERITY() AS ErrorSeverity
        ,ERROR_STATE() AS ErrorState
        ,ERROR_PROCEDURE() AS ErrorProcedure
        ,ERROR_LINE() AS ErrorLine
        ,ERROR_MESSAGE() AS ErrorMessage;

    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION;
END CATCH;

IF @@TRANCOUNT > 0
    COMMIT TRANSACTION;
  end