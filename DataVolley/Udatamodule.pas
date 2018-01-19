unit Udatamodule;

interface

uses
  SysUtils, Classes, UniProvider, InterBaseUniProvider, DB, DBAccess, Uni, MemDS;

type
  TDataModule1 = class(TDataModule)
    UniConnection1: TUniConnection;
    InterBaseUniProvider1: TInterBaseUniProvider;
    GET_GENERATOR_NUMBER: TUniStoredProc;
    GET_GENERATOR_NUMBERNEW_GEN_ID: TIntegerField;
    ds_GET_GENERATOR_NUMBER: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    function GetGamedataGenNumber : Integer;
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

{ TDataModule1 }

function TDataModule1.GetGamedataGenNumber: Integer;
begin
  GET_GENERATOR_NUMBER.Active := True;
  ds_GET_GENERATOR_NUMBER.DataSet.Refresh;
  Result := GET_GENERATOR_NUMBERNEW_GEN_ID.Value;
end;

end.
