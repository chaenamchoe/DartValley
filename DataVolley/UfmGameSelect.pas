unit UfmGameSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls,
  MemDS, DBAccess, Uni, cxGridBandedTableView, cxGridDBBandedTableView, Menus,
  StdCtrls, cxButtons;

type
  TfmGameSelect = class(TForm)
    Panel1: TPanel;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    GAME_DATA_SEL: TUniStoredProc;
    ds_GAME_DATA_SEL: TDataSource;
    GAME_DATA_SELID: TIntegerField;
    GAME_DATA_SELGAME_NAME: TStringField;
    GAME_DATA_SELG_DATE: TStringField;
    GAME_DATA_SELG_TIME: TStringField;
    GAME_DATA_SELA_CODE: TStringField;
    GAME_DATA_SELA_NAME: TStringField;
    GAME_DATA_SELA_COACH: TStringField;
    GAME_DATA_SELB_CODE: TStringField;
    GAME_DATA_SELB_NAME: TStringField;
    GAME_DATA_SELB_COACH: TStringField;
    GAME_DATA_SELG_PLACE: TStringField;
    GAME_DATA_SELG_GYMNAME: TStringField;
    gridGame: TcxGridDBBandedTableView;
    gridGameID: TcxGridDBBandedColumn;
    gridGameGAME_NAME: TcxGridDBBandedColumn;
    gridGameG_DATE: TcxGridDBBandedColumn;
    gridGameG_TIME: TcxGridDBBandedColumn;
    gridGameA_CODE: TcxGridDBBandedColumn;
    gridGameA_NAME: TcxGridDBBandedColumn;
    gridGameA_COACH: TcxGridDBBandedColumn;
    gridGameB_CODE: TcxGridDBBandedColumn;
    gridGameB_NAME: TcxGridDBBandedColumn;
    gridGameB_COACH: TcxGridDBBandedColumn;
    gridGameG_PLACE: TcxGridDBBandedColumn;
    gridGameG_GYMNAME: TcxGridDBBandedColumn;
    btnSelect: TcxButton;
    btnDel: TcxButton;
    GAME_DATA_DEL: TUniStoredProc;
    procedure FormShow(Sender: TObject);
    procedure gridGameDblClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmGameSelect: TfmGameSelect;

implementation

uses
  Udatamodule;

{$R *.dfm}

procedure TfmGameSelect.btnDelClick(Sender: TObject);
var
  top_row : Integer;
begin
  if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.'
    + #13#10 + '삭제전에 반드시 확인하세요.', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES
    then
  begin
    top_row := gridGame.Controller.TopRowIndex;
    gridGame.DataController.SaveBookmark;
    GAME_DATA_DEL.ParamByName('ID').Value := gridGameID.EditValue;
    GAME_DATA_DEL.ExecProc;
    ds_GAME_DATA_SEL.DataSet.Refresh;
    gridGame.DataController.GotoBookmark;
    gridGame.Controller.TopRowIndex := top_row;
  end;
end;

procedure TfmGameSelect.FormShow(Sender: TObject);
begin
  GAME_DATA_SEL.Active := True;
  ds_GAME_DATA_SEL.DataSet.Refresh;
end;

procedure TfmGameSelect.gridGameDblClick(Sender: TObject);
begin
  btnSelect.Click;
end;

end.
