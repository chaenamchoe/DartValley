unit UfmDataView;

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
  dxSkinXmas2008Blue, StdCtrls, cxButtons, ExtCtrls, StrUtils;

type
  TfmDataView = class(TForm)
    Panel1: TPanel;
    cxButton1: TcxButton;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo2: TMemo;
    cxButton2: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDataView: TfmDataView;

implementation

{$R *.dfm}

procedure TfmDataView.cxButton1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then begin
    Memo1.Lines.LoadFromFile(OpenDialog1.FileName);

  end;
end;

procedure TfmDataView.cxButton2Click(Sender: TObject);
var
  i, fLine, lCount : Integer;
  search_line: TStringList;
  found : Boolean;
begin
  search_line := TStringList.Create;
  try
    search_line.Assign(Memo1.Lines);
    lCount := search_line.Count;
    Memo2.Clear;

    found := False;
    for i := 0 to lCount - 1 do begin
      if (Edit2.Text <> '') and (search_line.Strings[i] = Edit2.Text) then
        Exit;
      if ContainsStr(search_line.Strings[i], Edit1.Text) then begin
        found := True;
        fLine := i;
      end;
      if (found = True) and (i > fLine) then begin
        Memo2.Lines.Add(search_line.Strings[i]);
      end;
    end;
  finally
    search_line.Free;
  end;

end;

procedure TfmDataView.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

initialization RegisterClasses([TfmDataView]);

end.
