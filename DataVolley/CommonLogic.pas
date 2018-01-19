unit CommonLogic;

interface
uses
    Windows, Classes, DB, ADODB, SysUtils, Forms, Graphics,
    Registry, Dialogs, Controls, DBCtrls, Math,
    IdHashMessageDigest, idHash, Uni, StdCtrls,
    Types, Messages, Buttons, cxGridDBTableView, cxGrid, cxButtons,
    StrUtils, cxDateUtils, cxContainer, ComCtrls, dxCore, cxMaskEdit,
    cxDropDownEdit, cxCalendar, cxGridDBBandedTableView,
    IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
    SOAPHTTPClient,SHDocVw, WinSock;

function GetMacAddress : string;
Function GetIPAddress():String;
Function TryGetFileSize(FName : String) : int64;
function MD5(const text_str : string) : string;

function GetMachineGuid: string;
function GetRegistryValue(KeyName: string): string;

function ConvertDateToStrField(Check_Date : TDateTime) : string;
procedure ConvertStrToDateField(Check_Date : string; var DateField : TcxDateEdit);


implementation


function GetMacAddress : string;
var
  SA: TSecurityAttributes;
  SI: TStartupInfo;
  PI: TProcessInformation;
  StdOutPipeRead, StdOutPipeWrite: THandle;
  WasOK: Boolean;
  Buffer: array[0..255] of AnsiChar;
  BytesRead: Cardinal;
  CommandLine, WorkDir, ResultStr, find_str1, find_str2 : string;
  Handle: Boolean;
  output, rst_str: TStringList;
  i, cnt : Integer;
begin
  output := TStringList.Create;
  rst_str := TStringList.Create;
  ResultStr := '';
  find_str1 := '拱府利 林家';
  find_str2 := 'Pysical Address';
  with SA do begin
    nLength := SizeOf(SA);
    bInheritHandle := True;
    lpSecurityDescriptor := nil;
  end;
  CreatePipe(StdOutPipeRead, StdOutPipeWrite, @SA, 0);
  try
    with SI do begin
      FillChar(SI, SizeOf(SI), 0);
      cb := SizeOf(SI);
      dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
      wShowWindow := SW_HIDE;
      hStdInput := GetStdHandle(STD_INPUT_HANDLE); // don't redirect stdin
      hStdOutput := StdOutPipeWrite;
      hStdError := StdOutPipeWrite;
    end;
    CommandLine := 'ipconfig /all';
    WorkDir := 'C:\';
    Handle := CreateProcess(nil, PChar('cmd.exe /C ' + CommandLine), nil, nil, True, 0, nil, PChar(WorkDir), SI, PI);
    CloseHandle(StdOutPipeWrite);
    if Handle then
      try
        repeat
          WasOK := ReadFile(StdOutPipeRead, Buffer, 255, BytesRead, nil);
          if BytesRead > 0 then
          begin
            Buffer[BytesRead] := #0;
            ResultStr := ResultStr + Buffer;
          end;
        until not WasOK or (BytesRead = 0);
        WaitForSingleObject(PI.hProcess, INFINITE);
        output.Text := ResultStr;
        for i := 0 to cnt - 1 do begin
          if ContainsStr(output[i], find_str1) or ContainsStr(output[i], find_str2) then begin
            ExtractStrings([':'], [], PWideChar(output[i]), rst_str);
            Result := Trim(rst_str[1]);
            Break;
          end;
        end;

      finally
        CloseHandle(PI.hThread);
        CloseHandle(PI.hProcess);
      end;
  finally
    CloseHandle(StdOutPipeRead);
    output.Free;
    rst_str.Free;
  end;
end;

Function GetIPAddress():String;
type
  pu_long = ^u_long;
var
  varTWSAData : TWSAData;
  varPHostEnt : PHostEnt;
  varTInAddr : TInAddr;
  namebuf : Array[0..255] of AnsiChar;
begin
  If WSAStartup($101,varTWSAData) <> 0 Then
  Result := 'No. IP Address'
  Else Begin
    gethostname(namebuf,sizeof(namebuf));
    varPHostEnt := gethostbyname(namebuf);
    varTInAddr.S_addr := u_long(pu_long(varPHostEnt^.h_addr_list^)^);
    Result := 'IP Address: '+inet_ntoa(varTInAddr);
  End;
  WSACleanup;
end;

Function TryGetFileSize(FName : String) : int64;
var
  FHandle : Integer;
  LowDWord, HighDWord: DWORD;
begin
  FHandle := FileOpen(FName, fmOpenRead+fmShareDenyNone);
  try
    LowDWord := GetFileSize(FHandle, @HighDWord);
    Result := (Int64(HighDWord) shl 32) or LowDWord;
  finally
    FileClose(FHandle);
  end;
end;

function MD5(const text_str : string) : string;
var
  idmd5 : TIdHashMessageDigest5;
begin
  idmd5 := TIdHashMessageDigest5.Create;
  try
    Result := idmd5.HashStringAsHex(text_str);
  finally
    idmd5.Free;
  end;
end;

function GetMachineGuid: string;
var
  Registry: TRegistry;
  GUID : string;
  KeyName: string;
begin
  Registry := TRegistry.Create(KEY_READ or KEY_WOW64_64KEY);
  try
    KeyName := 'SOFTWARE\Microsoft\Cryptography';
    Registry.RootKey := HKEY_LOCAL_MACHINE;
    if Registry.OpenKey(KeyName, False) then
      GUID := Registry.ReadString('MachineGuid')
    else
      GUID := '';
    Result := GUID;
  finally
    Registry.Free;
  end;
end;

function GetRegistryValue(KeyName: string): string;
var
  Registry: TRegistry;
  GUID : string;
begin
  Registry := TRegistry.Create(KEY_READ);
  try
    Registry.RootKey := HKEY_CLASSES_ROOT;
    if Registry.OpenKey(KeyName, False) then
      GUID := Registry.ReadString('GUID')
    else
      GUID := '';
    Result := GUID;
  finally
    Registry.Free;
  end;
end;

function ConvertDateToStrField(Check_Date : TDateTime) : string;
var
  new_date : TDateTime;
begin
  if TryStrToDate(DateTimeToStr(Check_Date), new_date) = True then
    Result := DateTimeToStr(new_date)
  else
    Result := '';
end;

procedure ConvertStrToDateField(Check_Date : string; var DateField : TcxDateEdit);
var
  new_date : TDateTime;
begin
  if TryStrToDate(Check_Date, new_date) = True then
    DateField.Date := new_date
  else
    DateField.Clear;
end;



end.
