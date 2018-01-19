unit UfmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, cxPC, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxLocalization, cxClasses, dxTabbedMDI,
  AppEvnts;

type
  TfmMain = class(TForm)
    MainMenu1: TMainMenu;
    StatusBar1: TStatusBar;
    N1: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    dxTabbedMDIManager1: TdxTabbedMDIManager;
    cxLocalizer1: TcxLocalizer;
    N3: TMenuItem;
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation

uses UfmDataView;

{$R *.dfm}


function CreateChild(sClass : string):Boolean;
var
  MyFormClass : TFormClass;
  WorkForm : TForm;
  H : THandle;
  I : Integer;
begin
  Result := True; H := 0;
  for I := 0 to Screen.CustomFormCount - 1 do begin
    if UpperCase('T' + Screen.CustomForms[I].Name) = UpperCase(sClass) then begin
      H := Screen.CustomForms[I].Handle;
      Break;
    end;
  end;
  if H = 0 then begin
    MyFormClass := TFormClass(GetClass(sClass));
    if MyFormClass <> nil then begin
      WorkForm := MyFormClass.Create(Application.MainForm);
    end else
      Result := False;
  end else begin
    if IsIconic(H) then
      ShowWindow(H, SW_SHOWNORMAL)
    else
      BringWindowToTop(H);
  end;
end;

procedure TfmMain.FormShow(Sender: TObject);
begin
  cxLocalizer1.FileName := 'ccnkorean.ini';
  cxLocalizer1.StorageType := lstIni;
  cxLocalizer1.Active := True;
  cxLocalizer1.Locale := $0412;
end;

procedure TfmMain.N2Click(Sender: TObject);
begin
  CreateChild('TfmDataView');
end;

procedure TfmMain.N3Click(Sender: TObject);
begin
  CreateChild('TfmDataTransactions');
end;

end.
