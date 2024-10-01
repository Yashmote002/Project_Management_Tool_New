  ----------------All Sored Procedure Qeries-------------------

-------For Checking the user is registered ir not ------------------

  create procedure CheckUser
  @Email nvarchar(100)
  As 
  Begin
  If Exists(Select 1 From Users where Email=@Email)
  Begin
  Select 'User already exists' as Message
  end
  end


  ----For Inserting User----------------
  create procedure InsertUser
  @UserName nvarchar(50),
  @Email nvarchar(100),
  @Password nvarchar(50),
  @Fname nvarchar(50),
  @Lname nvarchar(50),
  @IsEmailVerified BIT=0
  As
  Begin
  set Nocount on;
  Insert into Users values(@UserName,@Email,@Password,@Fname,@Lname,@IsEmailVerified,GetDate(),GETDATE());
  SELECT SCOPE_IDENTITY() AS NewUserId;
END;



