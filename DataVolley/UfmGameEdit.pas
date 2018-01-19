unit UfmGameEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, StdCtrls, cxButtons, ExtCtrls;

type
  TfmGameEdit = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    edtGameName: TEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    edtDate: TEdit;
    Panel6: TPanel;
    Panel7: TPanel;
    edtTime: TEdit;
    Panel8: TPanel;
    Panel9: TPanel;
    edtGym: TEdit;
    Panel12: TPanel;
    edtVideoFolder: TEdit;
    Panel13: TPanel;
    Panel14: TPanel;
    edtVideoFile: TEdit;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    edtATeamName: TEdit;
    Panel20: TPanel;
    Panel21: TPanel;
    edtATeamCode: TEdit;
    Panel22: TPanel;
    Panel23: TPanel;
    edtBTeamName: TEdit;
    edtBTeamCode: TEdit;
    Panel24: TPanel;
    Panel25: TPanel;
    edtATeamDirector: TEdit;
    Panel26: TPanel;
    Panel27: TPanel;
    edtBTeamDirector: TEdit;
    edtPlace: TEdit;
    btnOK: TcxButton;
    cxButton1: TcxButton;
    btnSearch: TcxButton;
    OpenDialog1: TOpenDialog;
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmGameEdit: TfmGameEdit;

implementation

{$R *.dfm}

procedure TfmGameEdit.btnSearchClick(Sender: TObject);
var
  i, fLine, lCount : Integer;
  found : Boolean;
  new_game_id : Integer;
  fname, pathname : string;
begin
  if OpenDialog1.Execute then begin
    fname := ExtractFileName(OpenDialog1.FileName);
    pathname := ExtractFilePath(OpenDialog1.FileName);
    edtVideoFolder.Text := pathname;
    edtVideoFile.Text := fname;
  end;
end;

end.
