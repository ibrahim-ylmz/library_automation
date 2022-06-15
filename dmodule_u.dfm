object dmodule: Tdmodule
  OldCreateOrder = False
  Height = 258
  Width = 559
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\crazy\Desktop\Delphi Proje\libraryDatabase.mdb;Mode=Share De' +
      'ny None;Persist Security Info=False;Jet OLEDB:System database=""' +
      ';Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet O' +
      'LEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:G' +
      'lobal Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Je' +
      't OLEDB:New Database Password="";Jet OLEDB:Create System Databas' +
      'e=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Lo' +
      'cale on Compact=False;Jet OLEDB:Compact Without Replica Repair=F' +
      'alse;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 29
    Top = 28
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 88
    Top = 28
  end
  object tbPersonel: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'personel'
    Left = 24
    Top = 104
  end
  object dtPersonel: TDataSource
    DataSet = tbPersonel
    Left = 88
    Top = 104
  end
  object tbSquestion: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'squestion'
    Left = 24
    Top = 176
  end
  object dtSquestion: TDataSource
    DataSet = tbSquestion
    Left = 88
    Top = 176
  end
  object tbMember: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'member'
    Left = 192
    Top = 24
    object tbMembersocialno: TWideStringField
      DisplayWidth = 14
      FieldName = 'socialno'
      Size = 11
    end
    object tbMembername: TWideStringField
      DisplayWidth = 13
      FieldName = 'name'
      Size = 25
    end
    object tbMembersurname: TWideStringField
      DisplayWidth = 15
      FieldName = 'surname'
      Size = 25
    end
    object tbMembertel: TWideStringField
      DisplayWidth = 20
      FieldName = 'tel'
      Size = 13
    end
    object tbMemberemail: TWideStringField
      DisplayWidth = 20
      FieldName = 'email'
      Size = 70
    end
    object tbMemberaddress: TWideStringField
      DisplayWidth = 37
      FieldName = 'address'
      Size = 85
    end
  end
  object dtMember: TDataSource
    DataSet = tbMember
    Left = 256
    Top = 24
  end
  object qrMember: TADOQuery
    Parameters = <>
    Left = 313
    Top = 24
  end
  object tbBook: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'book'
    Left = 194
    Top = 96
  end
  object dtBook: TDataSource
    DataSet = tbBook
    Left = 256
    Top = 96
  end
  object qrBook: TADOQuery
    Parameters = <>
    Left = 314
    Top = 96
  end
  object tbGivebook: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'give_book'
    Left = 200
    Top = 168
  end
  object dtGivebook: TDataSource
    DataSet = tbGivebook
    Left = 264
    Top = 168
  end
end
