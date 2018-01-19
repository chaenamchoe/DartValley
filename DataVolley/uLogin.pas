unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, dxGDIPlusClasses, ExtCtrls, ShellAPI,
  UniProvider, InterBaseUniProvider, DB, DBAccess, Uni, IniFiles,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  cxPC, DateUtils, dxSkinOffice2013White, dxSkinMetropolis, TLHelp32,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxBarBuiltInMenu, ExeInfo, MemDS, dxmdaset, Menus, cxButtons;

type
  TfmLogin = class(TForm)
    pnl1: TPanel;
    lbl3: TLabel;
    lbl7: TLabel;
    lblVersion: TLabel;
    UniConnection1: TUniConnection;
    InterBaseUniProvider1: TInterBaseUniProvider;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    grpLogin: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtUserID: TEdit;
    edtPassword: TEdit;
    btnLocalOK: TBitBtn;
    BitBtn1: TBitBtn;
    grpActivation: TGroupBox;
    lblActivationMsg: TLabel;
    ExeInfo1: TExeInfo;
    LOGIN_USER_SEL: TUniStoredProc;
    ds_LOGIN_USER_SEL: TUniDataSource;
    edtSN: TEdit;
    btnRegistUser: TBitBtn;
    btnBack: TBitBtn;
    chkSaveLogin: TCheckBox;
    Label4: TLabel;
    cxTabSheet2: TcxTabSheet;
    Label5: TLabel;
    btnDown: TcxButton;
    cxTabSheet4: TcxTabSheet;
    Label6: TLabel;
    Label7: TLabel;
    LOGIN_USER_SELID: TIntegerField;
    LOGIN_USER_SELUSER_NAME: TStringField;
    LOGIN_USER_SELLOGIN_ID: TStringField;
    LOGIN_USER_SELLOGIN_PASS: TStringField;
    LOGIN_USER_SELUSER_KIND: TIntegerField;
    LOGIN_USER_SELAPPROVED: TIntegerField;
    LOGIN_USER_SELREG_DATE: TStringField;
    LOGIN_USER_SELREMARK: TStringField;
    LOGIN_USER_SELEMAIL: TStringField;
    LOGIN_USER_SELTEL_NO: TStringField;
    LOGIN_USER_SELSYSTEM_SERIAL: TStringField;
    LOGIN_USER_SELBRANCH_CODE: TIntegerField;
    LOGIN_USER_SELCOMP_NAME: TStringField;
    procedure btnLocalOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnRegistUserClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure btnDownClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    function Check_UserSystem(LOGINID: string): boolean;
    procedure UpdateLoginCounter(login_id: string);
    function GetServerVersion(v_kind: Integer): string;
    { Private declarations }
  public
    { Public declarations }
    isRegisted : Boolean;
    UPDATE_MSG : string;
  end;

var
  fmLogin: TfmLogin;

implementation

uses CommonLogic, UfmRequestRegistration;

{$R *.dfm}

function KillTask(ExeFileName: string): Integer;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  Result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
        UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) = UpperCase(ExeFileName))) then
      Result := Integer(TerminateProcess(OpenProcess(PROCESS_TERMINATE, BOOL(0), FProcessEntry32.th32ProcessID), 0));
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

function TfmLogin.GetServerVersion(v_kind : Integer) : string;
begin
//  VERSION_MANAGER_SEL.ParamByName('PROGRAM_ID').Value := v_kind;
//  VERSION_MANAGER_SEL.Active := True;
//  if VERSION_MANAGER_SEL.RecordCount > 0 then begin
//    UPDATE_MSG := VERSION_MANAGER_SELUPDATE_MESSAGE.AsString;
//    Result := VERSION_MANAGER_SELCURRENT_VERSION.AsString;
//  end else begin
//    Result := UPDATE_MSG;
//    Result := '';
//  end;
end;

procedure TfmLogin.FormCreate(Sender: TObject);
begin
  try
    UniConnection1.Server := '210.122.7.39';
    UniConnection1.Port := 3050;
    UniConnection1.Database := 'D:\fb_data\DartVolley\dart_volley.FDB';
    UniConnection1.LoginPrompt := False;
    UniConnection1.ProviderName := 'InterBase';
    UniConnection1.Password := 'masterkey';
    UniConnection1.Username := 'sysdba';
    UniConnection1.Connected := True;
  except on E: Exception do begin
    ShowMessage('서버에 연결할 수 없습니다.');
    ModalResult := mrCancel;
    end;
  end;
end;

procedure TfmLogin.FormShow(Sender: TObject);
var
  pVersion, pDate, ServerVersion : string;
  approv_comp, approv_user : Integer;
  FIni : TIniFile;
  iniFileName, auto_login, AppVersion : string;
begin
  AppVersion := ExeInfo1.FileVersion;
  pDate := DateTimeToStr(FileDateToDateTime(FileAge(Application.ExeName)));
  pVersion := 'Version: ' + AppVersion + sLineBreak + 'Compiled: ' + pDate;
  lblVersion.Caption := pVersion;
  cxPageControl1.Properties.HideTabs := True;
  cxPageControl1.ActivePageIndex := 0;
end;

procedure TfmLogin.btnRegistUserClick(Sender: TObject);
begin
  fmRequestRegistration := TfmRequestRegistration.Create(Self);
  try
    fmRequestRegistration.ShowModal;
  finally
    fmRequestRegistration.Free;
  end;
end;

function TfmLogin.Check_UserSystem(LOGINID : string) : boolean;
var
  fQuery : TUniQuery;
  uPass : string;
  approved, payway : integer;
begin
  LOGIN_USER_SEL.ParamByName('USER_ID').Value := LOGINID;
  LOGIN_USER_SEL.ParamByName('SYSTEM_ID').Value := GetMachineGuid; //GetMacAddress;
  LOGIN_USER_SEL.Active := True;
  ds_LOGIN_USER_SEL.DataSet.Refresh;
  if LOGIN_USER_SEL.RecordCount > 0 then
    Result := True
  else
    Result := False;
end;

procedure TfmLogin.btnBackClick(Sender: TObject);
begin
  cxPageControl1.ActivePageIndex := 0;
end;

procedure TfmLogin.btnDownClick(Sender: TObject);
var
  i, cnt, data_id : Integer;
  mStream : TMemoryStream;
  fname : string;
begin
//  Screen.Cursor := crHourGlass;
//  cxPageControl1.ActivePageIndex := 3;
//  cxPageControl1.Refresh;
//  fname := gsDefaultFolder + 'bodycheck_update.exe';
//  mStream := TMemoryStream.Create;
//  UPDATE_FILE_SEL.ParamByName('FILE_ID').Value := 1;
//  UPDATE_FILE_SEL.Active := True;
//  UPDATE_FILE_SEL.Refresh;
//  TBlobField(UPDATE_FILE_SELUPDATE_FILE).SaveToStream(mStream);
//  mStream.Position := 0;
//  mStream.SaveToFile(fname);
//  mStream.Free;
//  Screen.Cursor := crArrow;
//  //본 프로그램을 실행하고 업데이트 실행파일을 종료한다.
//  ShellExecute(0, 'open', PWideChar(fname), '', nil, SW_SHOWNORMAL);
//  KillTask(ExtractFileName(Application.ExeName));
end;

procedure TfmLogin.btnLocalOKClick(Sender: TObject);
const
  msg_loginid = '아이디를 입력하세요.';
  msg_password = '비밀번호를 입력하세요.';
  msg_password2 = '아이디 또는 비밀번호가 틀렸습니다. 다시하세요.';
var
  FIni : TIniFile;
  iniFileName, ServerVersion : string;
  login_id, login_pass : string;
  approv_user, can_update : Integer;
begin
  login_id := edtUserID.Text;
  login_pass := edtPassword.Text;
  if login_id = '' then begin
    ShowMessage(msg_loginid);
    edtUserID.Setfocus;
    Exit;
  end;
  if login_pass = '' then begin
    ShowMessage(msg_password);
    edtPassword.Setfocus;
    Exit;
  end;
  if Check_UserSystem(login_id) = True then begin
    if LOGIN_USER_SELLOGIN_PASS.Value = login_pass then begin
      approv_user := LOGIN_USER_SELAPPROVED.AsInteger;
      if approv_user = 1 then begin
          ModalResult := mrOk;
      end else begin
        cxPageControl1.ActivePageIndex := 1;
      end;
    end else begin
      ShowMessage(msg_password);
      edtPassword.Text := '';
      edtPassword.Setfocus;
      Exit;
    end;
  end else begin
    cxPageControl1.ActivePageIndex := 0;
    ShowMessage(msg_password2);
    edtUserID.Text := '';
    edtPassword.Text := '';
    edtUserID.Setfocus;
    Exit;
  end;

end;

procedure TfmLogin.UpdateLoginCounter(login_id : string);
var
  fQuery : TUniQuery;
  act_code : string;
begin
//  fQuery := TUniQuery.Create(nil);
//  with fQuery do begin
//    Connection := UniConnection1;
//    SQL.Clear;
//    SQL.Add('Update COMPANY set ACTIVATION_DATE = :login_date, ACTIVATION_CNT = :login_cnt, USER_VERSION = :user_version ');
//    SQL.Add('where LOGIN_ID = :login_id ');
//    Params.ParamByName('login_date').AsDateTime := Now;
//    Params.ParamByName('login_cnt').AsInteger := LoginCounter + 1;
//    Params.ParamByName('login_id').AsString := login_id;
//    Params.ParamByName('user_version').AsString := AppVersion;
//    Execute;
//  end;
end;

end.
