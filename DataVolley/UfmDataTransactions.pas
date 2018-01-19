unit UfmDataTransactions;

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
  dxSkinXmas2008Blue, cxControls, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, dxmdaset, StdCtrls, cxButtons, ExtCtrls,
  StrUtils, Gauges, MemDS, DBAccess, Uni, cxTextEdit, dxBarBuiltInMenu, cxPC,
  cxImageComboBox, dxColorEdit, cxDBLookupComboBox, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxContainer, cxMaskEdit, cxSpinEdit, cxVariants;

type
  TfmDataTransactions = class(TForm)
    Panel1: TPanel;
    btnImportData: TcxButton;
    gridData: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ds_TRANSACTION_DATA_SEL: TDataSource;
    gridDataRecId: TcxGridDBColumn;
    gridDatafield1: TcxGridDBColumn;
    gridDatafield2: TcxGridDBColumn;
    gridDatafield3: TcxGridDBColumn;
    gridDatafield4: TcxGridDBColumn;
    gridDatafield5: TcxGridDBColumn;
    gridDatafield6: TcxGridDBColumn;
    gridDatafield7: TcxGridDBColumn;
    gridDatafield8: TcxGridDBColumn;
    gridDatafield9: TcxGridDBColumn;
    gridDatafield10: TcxGridDBColumn;
    gridDatafield11: TcxGridDBColumn;
    gridDatafield12: TcxGridDBColumn;
    gridDatafield13: TcxGridDBColumn;
    gridDatafield14: TcxGridDBColumn;
    gridDatafield15: TcxGridDBColumn;
    gridDatafield16: TcxGridDBColumn;
    gridDatafield17: TcxGridDBColumn;
    gridDatafield18: TcxGridDBColumn;
    gridDatafield19: TcxGridDBColumn;
    gridDatafield20: TcxGridDBColumn;
    gridDatafield21: TcxGridDBColumn;
    gridDatafield22: TcxGridDBColumn;
    gridDatafield23: TcxGridDBColumn;
    gridDatafield24: TcxGridDBColumn;
    gridDatafield25: TcxGridDBColumn;
    gridDatafield26: TcxGridDBColumn;
    OpenDialog1: TOpenDialog;
    Gauge1: TGauge;
    TRANSACTION_DATA_SEL: TUniStoredProc;
    TRANSACTION_DATA_INS: TUniStoredProc;
    TRANSACTION_DATA_UPD: TUniStoredProc;
    TRANSACTION_DATA_DEL: TUniStoredProc;
    TRANSACTION_DATA_SELID: TIntegerField;
    TRANSACTION_DATA_SELGAME_ID: TIntegerField;
    TRANSACTION_DATA_SELFIELD1: TStringField;
    TRANSACTION_DATA_SELFIELD2: TStringField;
    TRANSACTION_DATA_SELFIELD3: TStringField;
    TRANSACTION_DATA_SELFIELD4: TStringField;
    TRANSACTION_DATA_SELFIELD5: TStringField;
    TRANSACTION_DATA_SELFIELD6: TStringField;
    TRANSACTION_DATA_SELFIELD7: TStringField;
    TRANSACTION_DATA_SELFIELD8: TStringField;
    TRANSACTION_DATA_SELFIELD9: TStringField;
    TRANSACTION_DATA_SELFIELD10: TStringField;
    TRANSACTION_DATA_SELFIELD11: TStringField;
    TRANSACTION_DATA_SELFIELD12: TStringField;
    TRANSACTION_DATA_SELFIELD13: TStringField;
    TRANSACTION_DATA_SELFIELD14: TStringField;
    TRANSACTION_DATA_SELFIELD15: TStringField;
    TRANSACTION_DATA_SELFIELD16: TStringField;
    TRANSACTION_DATA_SELFIELD17: TStringField;
    TRANSACTION_DATA_SELFIELD18: TStringField;
    TRANSACTION_DATA_SELFIELD19: TStringField;
    TRANSACTION_DATA_SELFIELD20: TStringField;
    TRANSACTION_DATA_SELFIELD21: TStringField;
    TRANSACTION_DATA_SELFIELD22: TStringField;
    TRANSACTION_DATA_SELFIELD23: TStringField;
    TRANSACTION_DATA_SELFIELD24: TStringField;
    TRANSACTION_DATA_SELFIELD25: TStringField;
    TRANSACTION_DATA_SELFIELD26: TStringField;
    btnView: TcxButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    GAME_DATA_SEL: TUniStoredProc;
    PLAYER_DATA_SEL: TUniStoredProc;
    GAME_DATA_INS: TUniStoredProc;
    GAME_DATA_UPD: TUniStoredProc;
    GAME_DATA_DEL: TUniStoredProc;
    PLAYER_DATA_UPD: TUniStoredProc;
    PLAYER_DATA_INS: TUniStoredProc;
    PLAYER_DATA_DEL: TUniStoredProc;
    ds_GAME_DATA_SEL: TDataSource;
    ds_PLAYER_DATA_SEL: TDataSource;
    btnGameSelect: TcxButton;
    btnGameEdit: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    gridPlayer: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    PLAYER_DATA_SELID: TIntegerField;
    PLAYER_DATA_SELGAME_ID: TIntegerField;
    PLAYER_DATA_SELTEAM_KIND: TIntegerField;
    PLAYER_DATA_SELTEAM_IDX: TIntegerField;
    PLAYER_DATA_SELALL_IDX: TIntegerField;
    PLAYER_DATA_SELSET1: TStringField;
    PLAYER_DATA_SELSET2: TStringField;
    PLAYER_DATA_SELSET3: TStringField;
    PLAYER_DATA_SELSET4: TStringField;
    PLAYER_DATA_SELSET5: TStringField;
    PLAYER_DATA_SELNAME_E: TStringField;
    PLAYER_DATA_SELNAME_K: TStringField;
    PLAYER_DATA_SELA_KIND: TStringField;
    gridPlayerID: TcxGridDBColumn;
    gridPlayerGAME_ID: TcxGridDBColumn;
    gridPlayerTEAM_KIND: TcxGridDBColumn;
    gridPlayerTEAM_IDX: TcxGridDBColumn;
    gridPlayerALL_IDX: TcxGridDBColumn;
    gridPlayerSET1: TcxGridDBColumn;
    gridPlayerSET2: TcxGridDBColumn;
    gridPlayerSET3: TcxGridDBColumn;
    gridPlayerSET4: TcxGridDBColumn;
    gridPlayerSET5: TcxGridDBColumn;
    gridPlayerNAME_E: TcxGridDBColumn;
    gridPlayerNAME_K: TcxGridDBColumn;
    gridPlayerA_KIND: TcxGridDBColumn;
    ATTACK_COMBINATION_INS: TUniStoredProc;
    ATTACK_COMBINATION_SEL: TUniStoredProc;
    SETTER_CALL_INS: TUniStoredProc;
    SETTER_CALL_SEL: TUniStoredProc;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    gridAttack: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid4: TcxGrid;
    gridSetter: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    ds_ATTACK_COMBINATION_SEL: TDataSource;
    ds_SETTER_CALL_SEL: TDataSource;
    ATTACK_COMBINATION_SELID: TIntegerField;
    ATTACK_COMBINATION_SELGAME_ID: TIntegerField;
    ATTACK_COMBINATION_SELFIELD1: TStringField;
    ATTACK_COMBINATION_SELFIELD2: TStringField;
    ATTACK_COMBINATION_SELFIELD3: TStringField;
    ATTACK_COMBINATION_SELFIELD4: TStringField;
    ATTACK_COMBINATION_SELFIELD5: TStringField;
    ATTACK_COMBINATION_SELFIELD6: TStringField;
    ATTACK_COMBINATION_SELFIELD7: TStringField;
    ATTACK_COMBINATION_SELFIELD8: TStringField;
    ATTACK_COMBINATION_SELFIELD9: TStringField;
    ATTACK_COMBINATION_SELFIELD10: TStringField;
    SETTER_CALL_SELID: TIntegerField;
    SETTER_CALL_SELGAME_ID: TIntegerField;
    SETTER_CALL_SELFIELD1: TStringField;
    SETTER_CALL_SELFIELD2: TStringField;
    SETTER_CALL_SELFIELD3: TStringField;
    SETTER_CALL_SELFIELD4: TStringField;
    SETTER_CALL_SELFIELD5: TStringField;
    SETTER_CALL_SELFIELD6: TStringField;
    SETTER_CALL_SELFIELD7: TStringField;
    SETTER_CALL_SELFIELD8: TStringField;
    SETTER_CALL_SELFIELD9: TStringField;
    SETTER_CALL_SELFIELD10: TStringField;
    gridAttackID: TcxGridDBColumn;
    gridAttackGAME_ID: TcxGridDBColumn;
    gridAttackFIELD1: TcxGridDBColumn;
    gridAttackFIELD2: TcxGridDBColumn;
    gridAttackFIELD3: TcxGridDBColumn;
    gridAttackFIELD4: TcxGridDBColumn;
    gridAttackFIELD5: TcxGridDBColumn;
    gridAttackFIELD6: TcxGridDBColumn;
    gridAttackFIELD7: TcxGridDBColumn;
    gridAttackFIELD8: TcxGridDBColumn;
    gridAttackFIELD9: TcxGridDBColumn;
    gridAttackFIELD10: TcxGridDBColumn;
    gridSetterID: TcxGridDBColumn;
    gridSetterGAME_ID: TcxGridDBColumn;
    gridSetterFIELD1: TcxGridDBColumn;
    gridSetterFIELD2: TcxGridDBColumn;
    gridSetterFIELD3: TcxGridDBColumn;
    gridSetterFIELD4: TcxGridDBColumn;
    gridSetterFIELD5: TcxGridDBColumn;
    gridSetterFIELD6: TcxGridDBColumn;
    gridSetterFIELD7: TcxGridDBColumn;
    gridSetterFIELD8: TcxGridDBColumn;
    gridSetterFIELD9: TcxGridDBColumn;
    gridSetterFIELD10: TcxGridDBColumn;
    SET_SCORE_INS: TUniStoredProc;
    SET_SCORE_SEL: TUniStoredProc;
    SET_SCORE_SELID: TIntegerField;
    SET_SCORE_SELGAME_ID: TIntegerField;
    SET_SCORE_SELSET_NO: TIntegerField;
    SET_SCORE_SELFIELD1: TStringField;
    SET_SCORE_SELFIELD2: TStringField;
    SET_SCORE_SELFIELD3: TStringField;
    SET_SCORE_SELFIELD4: TStringField;
    SET_SCORE_SELFIELD5: TStringField;
    SET_SCORE_SELFIELD6: TStringField;
    ds_SET_SCORE_SEL: TDataSource;
    gridScore: TcxGridDBTableView;
    cxGrid5Level1: TcxGridLevel;
    cxGrid5: TcxGrid;
    gridScoreID: TcxGridDBColumn;
    gridScoreGAME_ID: TcxGridDBColumn;
    gridScoreSET_NO: TcxGridDBColumn;
    gridScoreFIELD1: TcxGridDBColumn;
    gridScoreFIELD2: TcxGridDBColumn;
    gridScoreFIELD3: TcxGridDBColumn;
    gridScoreFIELD4: TcxGridDBColumn;
    gridScoreFIELD5: TcxGridDBColumn;
    gridScoreFIELD6: TcxGridDBColumn;
    GET_PLAYER_NUMBER: TUniStoredProc;
    ds_GET_PLAYER_NUMBER: TDataSource;
    GET_PLAYER_NUMBERID: TIntegerField;
    TRANSACTION_DATA_SELPLAYER_IDX: TSmallintField;
    gridDataPLAYER_IDX: TcxGridDBColumn;
    PLAYER_HOME_LOOK: TUniStoredProc;
    ds_PLAYER_HOME_LOOK: TDataSource;
    PLAYER_HOME_LOOKID: TIntegerField;
    PLAYER_HOME_LOOKNAME_K: TStringField;
    Panel4: TPanel;
    Label1: TLabel;
    edtFilter: TEdit;
    btnFilter: TcxButton;
    btnFilterClear: TcxButton;
    GAME_DATA_SEL_ID: TUniStoredProc;
    ds_GAME_DATA_SEL_ID: TDataSource;
    GAME_DATA_SEL_IDID: TIntegerField;
    GAME_DATA_SEL_IDGAME_NAME: TStringField;
    GAME_DATA_SEL_IDG_DATE: TStringField;
    GAME_DATA_SEL_IDG_TIME: TStringField;
    GAME_DATA_SEL_IDA_CODE: TStringField;
    GAME_DATA_SEL_IDA_NAME: TStringField;
    GAME_DATA_SEL_IDA_COACH: TStringField;
    GAME_DATA_SEL_IDB_CODE: TStringField;
    GAME_DATA_SEL_IDB_NAME: TStringField;
    GAME_DATA_SEL_IDB_COACH: TStringField;
    GAME_DATA_SEL_IDG_PLACE: TStringField;
    GAME_DATA_SEL_IDG_GYMNAME: TStringField;
    GAME_DATA_SEL_IDVIDEO_PATH: TStringField;
    GAME_DATA_SEL_IDVIDEO_FILE: TStringField;
    cxButton1: TcxButton;
    ATTACK_COMBINATION_KIND_SEL: TUniStoredProc;
    ds_ATTACK_COMBINATION_KIND_SEL: TDataSource;
    ATTACK_COMBINATION_KIND_SELID: TIntegerField;
    ATTACK_COMBINATION_KIND_SELGAME_ID: TIntegerField;
    ATTACK_COMBINATION_KIND_SELFIELD1: TStringField;
    ATTACK_COMBINATION_KIND_SELFIELD2: TStringField;
    ATTACK_COMBINATION_KIND_SELFIELD3: TStringField;
    ATTACK_COMBINATION_KIND_SELFIELD4: TStringField;
    ATTACK_COMBINATION_KIND_SELFIELD5: TStringField;
    ATTACK_COMBINATION_KIND_SELFIELD6: TStringField;
    ATTACK_COMBINATION_KIND_SELFIELD7: TStringField;
    ATTACK_COMBINATION_KIND_SELFIELD8: TStringField;
    ATTACK_COMBINATION_KIND_SELFIELD9: TStringField;
    ATTACK_COMBINATION_KIND_SELFIELD10: TStringField;
    ATTACK_COMBINATION_LOOK: TUniStoredProc;
    ATTACK_COMBINATION_LOOKID: TIntegerField;
    ATTACK_COMBINATION_LOOKFIELD1: TStringField;
    ATTACK_COMBINATION_LOOKFIELD2: TStringField;
    ATTACK_COMBINATION_LOOKFIELD3: TStringField;
    ATTACK_COMBINATION_LOOKFIELD4: TStringField;
    ATTACK_COMBINATION_LOOKFIELD5: TStringField;
    ATTACK_COMBINATION_LOOKFIELD6: TStringField;
    ATTACK_COMBINATION_LOOKFIELD7: TStringField;
    ATTACK_COMBINATION_LOOKFIELD8: TStringField;
    ATTACK_COMBINATION_LOOKFIELD9: TStringField;
    ATTACK_COMBINATION_LOOKFIELD10: TStringField;
    ds_ATTACK_COMBINATION_LOOK: TDataSource;
    btnCSV: TcxButton;
    SaveDialog1: TSaveDialog;
    cxGridPopupMenu1: TcxGridPopupMenu;
    speStartTime: TcxSpinEdit;
    Label2: TLabel;
    speDuration: TcxSpinEdit;
    Label3: TLabel;
    btnUpdateTime: TcxButton;
    TRANSACTION_DATA_SELTIME_SEC: TStringField;
    TRANSACTION_DATA_SELTIME_DUR: TStringField;
    gridDataTIME_SEC: TcxGridDBColumn;
    gridDataTIME_DUR: TcxGridDBColumn;
    TRANSACTION_DATA_UPD_TIME: TUniStoredProc;
    gridDataID: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImportDataClick(Sender: TObject);
    procedure btnViewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridDatafield15CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gridDatafield21CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnGameSelectClick(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure btnFilterClearClick(Sender: TObject);
    procedure btnGameEditClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnCSVClick(Sender: TObject);
    procedure btnUpdateTimeClick(Sender: TObject);
  private
    function GetLineNumber(str: string): Integer;
    procedure GetMatchData;
    procedure GetActionData;
    procedure GetPlayerData;
    procedure GetAttackCombiData;
    procedure GetSetterCallData;
    procedure GetScoreData;
    function GetPlayerNumber(action_str: string) : Integer;
    procedure RetrievePlayerLookup;
    function GetBaseTechnic(action_str: string): string;
    function GetBallType(action_str: string): string;
    function GetActionResult(action_str: string): string;
    function GetCombination(action_str: string): Integer;
    { Private declarations }
  public
    { Public declarations }
    CURRENT_GAME_ID : Integer;
    DATA_STRINGS : TStringList;
  end;

var
  fmDataTransactions: TfmDataTransactions;

implementation

uses
  Udatamodule, UfmGameSelect, UfmGameEdit, UfmVideoPlayer;
{$R *.dfm}

procedure Split(Delimiter: Char; Str: string; ListOfStrings: TStrings) ;
begin
   ListOfStrings.Clear;
   ListOfStrings.Delimiter       := Delimiter;
   ListOfStrings.StrictDelimiter := True; // Requires D2006 or newer.
   ListOfStrings.DelimitedText   := Str;
end;

function TfmDataTransactions.GetLineNumber(str : string) : Integer;
var
  i, cnt : Integer;
begin
  for i := 0 to DATA_STRINGS.Count - 1 do begin
    if ContainsStr(DATA_STRINGS.Strings[i], str) then begin
      Result := i;
      Break;
    end;
  end;
end;

procedure TfmDataTransactions.btnCSVClick(Sender: TObject);
var
  i, cnt, p_idx : Integer;
  fname, fstr, header : string;
  fStrList : TStringList;
  action, a_name, a_tech, b_type, a_rslt, a_comb, a_time, a_dur, a_set, a_zon1, a_zon2, a_team, a_receive, a_dig : string;
begin
  header := '기술, 위치, 기간, 팀명, 선수명, 리시브, 디그, 볼타입, 결과, 콤비네이션, 세트, 존1, 존2' ;
  if SaveDialog1.Execute then begin
    fname := SaveDialog1.FileName;
    cnt := gridData.DataController.filteredRecordCount;
    fStrList := TStringList.Create;
    fStrList.Add(header);
    try
      with gridData.DataController do begin
        for i := 0 to cnt - 1 do begin
          if VarIsNumeric(GetValue(FilteredRecordIndex[i], gridDataPLAYER_IDX.Index)) then begin
            if GetValue(FilteredRecordIndex[i], gridDataPLAYER_IDX.Index) > 0 then begin
              action := GetDisplayText(FilteredRecordIndex[i], gridDatafield1.Index);
              a_name := GetDisplayText(FilteredRecordIndex[i], gridDataPLAYER_IDX.Index);
              a_tech := GetDisplayText(FilteredRecordIndex[i], gridDatafield2.Index);
              a_time := GetDisplayText(FilteredRecordIndex[i], gridDataTIME_SEC.Index);
              a_dur := GetDisplayText(FilteredRecordIndex[i], gridDataTIME_DUR.Index);
              b_type := GetDisplayText(FilteredRecordIndex[i], gridDatafield3.Index);
              a_rslt := GetDisplayText(FilteredRecordIndex[i], gridDatafield4.Index);
              a_comb := GetDisplayText(FilteredRecordIndex[i], gridDatafield5.Index);
              a_set := GetDisplayText(FilteredRecordIndex[i], gridDatafield9.Index);
              a_zon1 := GetDisplayText(FilteredRecordIndex[i], gridDatafield10.Index);
              a_zon2 := GetDisplayText(FilteredRecordIndex[i], gridDatafield11.Index);

              if AnsiLeftStr(action, 1) = 'a' then a_team := 'Away' else a_team := 'Home';
              if a_tech = 'Receive' then a_receive := 'Receive' else a_receive := '';
              if a_tech = 'Defense' then a_dig := 'Defense' else a_dig := '';

              fStrList.Add(a_tech + ',' + a_time + ',' + a_dur + ',' + a_team + ',' + a_name + ',' +
                           a_receive + ',' + a_dig + ',' + b_type + ',' + a_rslt + ',' + a_comb + ',' +
                           a_set + ',' + a_zon1 + ',' + a_zon2);
            end;
          end;
        end;
      end;
      fStrList.SaveToFile(fname);
      ShowMessage(fname + ' 저장완료');
    finally
      fStrList.Free;
    end;

  end;
end;

procedure TfmDataTransactions.btnFilterClearClick(Sender: TObject);
begin
  edtFilter.Text := '';
  TRANSACTION_DATA_SEL.Filter := '';
  TRANSACTION_DATA_SEL.Filtered := True;
  edtFilter.SetFocus;
end;

procedure TfmDataTransactions.btnFilterClick(Sender: TObject);
var
  f_str : string;
begin
  f_str := '%'+ Trim(edtFilter.Text) + '%';
  TRANSACTION_DATA_SEL.Filter := 'field1 like "' + f_str + '"';
  TRANSACTION_DATA_SEL.Filtered := True;

end;

procedure TfmDataTransactions.btnGameEditClick(Sender: TObject);
begin
  if CURRENT_GAME_ID > 0 then begin
    fmGameEdit := TfmGameEdit.Create(Self);
    try

      GAME_DATA_SEL_ID.ParamByName('G_ID').Value := CURRENT_GAME_ID;
      GAME_DATA_SEL_ID.Active := True;
      ds_GAME_DATA_SEL_ID.DataSet.Refresh;

      fmGameEdit.edtGameName.Text :=           GAME_DATA_SEL_IDGAME_NAME.AsString;
      fmGameEdit.edtDate.Text :=               GAME_DATA_SEL_IDG_DATE.AsString;
      fmGameEdit.edtTime.Text :=               GAME_DATA_SEL_IDG_TIME.AsString;
      fmGameEdit.edtPlace.Text :=              GAME_DATA_SEL_IDG_PLACE.AsString;
      fmGameEdit.edtGym.Text :=                GAME_DATA_SEL_IDG_GYMNAME.AsString;
      fmGameEdit.edtATeamCode.Text :=          GAME_DATA_SEL_IDA_CODE.AsString;
      fmGameEdit.edtATeamName.Text :=          GAME_DATA_SEL_IDA_NAME.AsString;
      fmGameEdit.edtBTeamCode.Text :=          GAME_DATA_SEL_IDB_CODE.AsString;
      fmGameEdit.edtBTeamName.Text :=          GAME_DATA_SEL_IDB_NAME.AsString;
      fmGameEdit.edtATeamDirector.Text :=      GAME_DATA_SEL_IDA_COACH.AsString;
      fmGameEdit.edtBTeamDirector.Text :=      GAME_DATA_SEL_IDB_COACH.AsString;
      fmGameEdit.edtVideoFile.Text :=          GAME_DATA_SEL_IDVIDEO_FILE.AsString;
      fmGameEdit.edtVideoFolder.Text :=        GAME_DATA_SEL_IDVIDEO_PATH.AsString;

      fmGameEdit.ShowModal;
      if fmGameEdit.ModalResult = mrOk then begin
         GAME_DATA_UPD.ParamByName('ID').Value := CURRENT_GAME_ID;
         GAME_DATA_UPD.ParamByName('GAME_NAME').Value :=  fmGameEdit.edtGameName.Text;
         GAME_DATA_UPD.ParamByName('G_DATE').Value :=     fmGameEdit.edtDate.Text;
         GAME_DATA_UPD.ParamByName('G_TIME').Value :=     fmGameEdit.edtTime.Text;
         GAME_DATA_UPD.ParamByName('A_CODE').Value :=     fmGameEdit.edtATeamCode.Text;
         GAME_DATA_UPD.ParamByName('A_NAME').Value :=     fmGameEdit.edtATeamName.Text;
         GAME_DATA_UPD.ParamByName('A_COACH').Value :=    fmGameEdit.edtATeamDirector.Text;
         GAME_DATA_UPD.ParamByName('B_CODE').Value :=     fmGameEdit.edtBTeamCode.Text;
         GAME_DATA_UPD.ParamByName('B_NAME').Value :=     fmGameEdit.edtBTeamName.Text;
         GAME_DATA_UPD.ParamByName('B_COACH').Value :=    fmGameEdit.edtBTeamDirector.Text;
         GAME_DATA_UPD.ParamByName('G_PLACE').Value :=    fmGameEdit.edtPlace.Text;
         GAME_DATA_UPD.ParamByName('G_GYMNAME').Value :=  fmGameEdit.edtGym.Text;
         GAME_DATA_UPD.ParamByName('VIDEO_PATH').Value := fmGameEdit.edtVideoFolder.Text;
         GAME_DATA_UPD.ParamByName('VIDEO_FILE').Value := fmGameEdit.edtVideoFile.Text;
         GAME_DATA_UPD.ExecProc;

      end;
    finally
      fmGameEdit.Free;
    end;
  end else begin
    ShowMessage('게임을 먼저 선택하세요.');
  end;
end;

procedure TfmDataTransactions.btnGameSelectClick(Sender: TObject);
var
  match_name, ateam, bteam : string;
begin
  fmGameSelect := TfmGameSelect.Create(Self);
  try
    fmGameSelect.ShowModal;
    if fmGameSelect.ModalResult = mrOk then begin
      CURRENT_GAME_ID := fmGameSelect.GAME_DATA_SELID.Value;
      match_name := fmGameSelect.GAME_DATA_SELGAME_NAME.Value;
      ateam := fmGameSelect.GAME_DATA_SELA_NAME.Value;
      bteam := fmGameSelect.GAME_DATA_SELB_NAME.Value;
      Caption := '게임데이터 조회' +
        '[' + match_name + ' ' + ateam + ':' + bteam + ']';
      //선수정보 추출
      RetrievePlayerLookup;
      btnView.Click;
    end;
  finally
    fmGameSelect.Free;
  end;
end;

procedure TfmDataTransactions.RetrievePlayerLookup;
begin
  PLAYER_HOME_LOOK.ParamByName('GAME_ID').Value := CURRENT_GAME_ID;
  PLAYER_HOME_LOOK.Active := True;
  ds_PLAYER_HOME_LOOK.DataSet.Refresh;

  ATTACK_COMBINATION_LOOK.ParamByName('G_ID').Value := CURRENT_GAME_ID;
  ATTACK_COMBINATION_LOOK.Active := True;
  ds_ATTACK_COMBINATION_LOOK.DataSet.Refresh;
end;

procedure TfmDataTransactions.btnViewClick(Sender: TObject);
begin
  PLAYER_DATA_SEL.ParamByName('G_ID').Value := CURRENT_GAME_ID;
  PLAYER_DATA_SEL.Active := True;
  ds_PLAYER_DATA_SEL.DataSet.Refresh;

  SET_SCORE_SEL.ParamByName('G_ID').Value := CURRENT_GAME_ID;
  SET_SCORE_SEL.Active := True;
  ds_SET_SCORE_SEL.DataSet.Refresh;

  TRANSACTION_DATA_SEL.ParamByName('G_ID').Value := CURRENT_GAME_ID;
  TRANSACTION_DATA_SEL.Active := True;
  ds_TRANSACTION_DATA_SEL.DataSet.Refresh;

  ATTACK_COMBINATION_SEL.ParamByName('G_ID').Value := CURRENT_GAME_ID;
  ATTACK_COMBINATION_SEL.Active := True;
  ds_ATTACK_COMBINATION_SEL.DataSet.Refresh;

  SETTER_CALL_SEL.ParamByName('G_ID').Value := CURRENT_GAME_ID;
  SETTER_CALL_SEL.Active := True;
  ds_SETTER_CALL_SEL.DataSet.Refresh;

  GAME_DATA_SEL_ID.ParamByName('G_ID').Value := CURRENT_GAME_ID;
  GAME_DATA_SEL_ID.Active := True;
  ds_GAME_DATA_SEL_ID.DataSet.Refresh;
end;

procedure TfmDataTransactions.cxButton1Click(Sender: TObject);
var
  vfolder, vfilename : string;
begin
  fmVideoPlayer := TfmVideoPlayer.Create(Application);
  vfilename :=  GAME_DATA_SEL_IDVIDEO_FILE.AsString;
  vfolder :=    GAME_DATA_SEL_IDVIDEO_PATH.AsString;
  if FileExists(vfolder + vfilename) then begin
    fmVideoPlayer.VIDEO_FILE_NAME := vfolder + vfilename;
    //fmVideoPlayer
    fmVideoPlayer.Show;
  end else begin
    ShowMessage('비디오 파일이 없습니다. 확인하세요.');
  end;
end;

procedure TfmDataTransactions.btnImportDataClick(Sender: TObject);
var
  i, fLine, lCount : Integer;
  found : Boolean;
  new_game_id : Integer;
begin
  if OpenDialog1.Execute then begin
    DATA_STRINGS := TStringList.Create;
    try
      DATA_STRINGS.LoadFromFile(OpenDialog1.FileName);
      new_game_id := DataModule1.GetGamedataGenNumber;
      CURRENT_GAME_ID := new_game_id + 1;

      GetMatchData;
      GetScoreData;
      GetAttackCombiData;
      GetSetterCallData;
      GetPlayerData;
      GetActionData;

      //선수정보 추출
      RetrievePlayerLookup;
      btnView.Click;
    finally
      DATA_STRINGS.Free;
    end;
  end;
end;

procedure TfmDataTransactions.btnUpdateTimeClick(Sender: TObject);
var
  i, cnt, is_first : Integer;
  o_time : string;
  stlist : TStringList;
  o_time_sec, t_hrs, t_min, t_sec, start_hm : Int64;
begin
  cnt := gridData.DataController.RecordCount;
  gridData.DataController.GotoFirst;
  is_first := 0;
  for i := 0 to cnt - 1 do begin
    if gridDatafield8.EditValue <> '' then begin
      o_time := gridDatafield8.EditValue;
//      o_time_sec := StrToInt64(o_time) * 1000;
      stlist := TStringList.Create;
      ExtractStrings(['.'],[],Pchar(o_time),stlist);
      t_hrs := StrToInt64(stlist[0]) * 3600;
      t_min := StrToInt64(stlist[1]) * 60;
      t_sec := StrToInt64(stlist[2]);
      if is_first = 0 then
        start_hm := t_hrs + t_min + t_sec;

      o_time_sec := (t_hrs + t_min + t_sec + speStartTime.EditValue)  - (start_hm);
      inc(is_first);

      TRANSACTION_DATA_UPD_TIME.ParamByName('ID').Value := gridDataID.EditValue;
      TRANSACTION_DATA_UPD_TIME.ParamByName('TIME_SEC').Value := IntToStr(o_time_sec * 1000);
      TRANSACTION_DATA_UPD_TIME.ParamByName('TIME_DUR').Value := IntToStr(speDuration.EditValue * 1000);
      TRANSACTION_DATA_UPD_TIME.ExecProc;
      stlist.Free;
    end;
    gridData.DataController.GotoNext;
  end;
  ds_TRANSACTION_DATA_SEL.DataSet.Refresh;
  gridData.DataController.GotoFirst;
end;

procedure TfmDataTransactions.GetMatchData;
var
  lCount, i, fLine : Integer;
  found : Boolean;
  stlist, str_team1, str_team2, str_gym : TStringList;
  game_name, team_name : string;
begin
  stlist := TStringList.Create;
  str_team1 := TStringList.Create;
  str_team2 := TStringList.Create;
  str_gym := TStringList.Create;
  try
    lCount := DATA_STRINGS.Count;
    //extract match data
    fLine := GetLineNumber('[3MATCH]');
    Split(';', DATA_STRINGS.Strings[fLine+1], stlist);
    game_name := stlist[2]+' '+stlist[3]+' '+stlist[4]+' '+stlist[5];

    GAME_DATA_INS.ParamByName('GAME_NAME').Value := game_name;
    GAME_DATA_INS.ParamByName('G_DATE').Value :=    stlist[0];
    GAME_DATA_INS.ParamByName('G_TIME').Value :=    stlist[1];
    //extract teams data....
    fLine := GetLineNumber('[3TEAMS]');
    Split(';', DATA_STRINGS.Strings[fLine+1], str_team1) ;
    Split(';', DATA_STRINGS.Strings[fLine+2], str_team2) ;
    Split(';', DATA_STRINGS.Strings[fLine+4], str_gym) ;

    GAME_DATA_INS.ParamByName('A_CODE').Value :=    str_team1[0];
    GAME_DATA_INS.ParamByName('A_NAME').Value :=    str_team1[1];
    GAME_DATA_INS.ParamByName('A_COACH').Value :=   str_team1[3]+'/'+str_team1[4];
    GAME_DATA_INS.ParamByName('B_CODE').Value :=    str_team2[0];
    GAME_DATA_INS.ParamByName('B_NAME').Value :=    str_team2[1];
    GAME_DATA_INS.ParamByName('B_COACH').Value :=   str_team2[3]+'/'+str_team2[4];
    team_name := str_team1[1] + ':' + str_team2[1];
    Caption := '게임데이터조회' + '[' + game_name + ' ' + team_name + ']';
    GAME_DATA_INS.ParamByName('G_PLACE').Value :=   str_gym[3];
    GAME_DATA_INS.ParamByName('G_GYMNAME').Value := str_gym[4];
    GAME_DATA_INS.ExecProc;
  finally
    stlist.Free;
    str_team1.Free;
    str_team2.Free;
    str_gym.Free;
  end;
end;

procedure TfmDataTransactions.GetScoreData;
var
  lCount, i, fLine, t : Integer;
  found : Boolean;
  str_set1, str_set2, str_set3, str_set4, str_set5 : TStringList;
  game_name, team_name : string;
begin
  str_set1 := TStringList.Create;
  str_set2 := TStringList.Create;
  str_set3 := TStringList.Create;
  str_set4 := TStringList.Create;
  str_set5 := TStringList.Create;
  try
    //extract match data
    fLine := GetLineNumber('[3SET]');
    Split(';', DATA_STRINGS.Strings[fLine+1], str_set1);
    Split(';', DATA_STRINGS.Strings[fLine+2], str_set2);
    Split(';', DATA_STRINGS.Strings[fLine+3], str_set3);
    Split(';', DATA_STRINGS.Strings[fLine+4], str_set4);
    Split(';', DATA_STRINGS.Strings[fLine+5], str_set5);
    //set1 score...
    SET_SCORE_INS.ParamByName('GAME_ID').Value := CURRENT_GAME_ID;
    SET_SCORE_INS.ParamByName('SET_NO').Value := 1;
    SET_SCORE_INS.ParamByName('FIELD1').Value := str_set1[0];
    SET_SCORE_INS.ParamByName('FIELD2').Value := str_set1[1];
    SET_SCORE_INS.ParamByName('FIELD3').Value := str_set1[2];
    SET_SCORE_INS.ParamByName('FIELD4').Value := str_set1[3];
    SET_SCORE_INS.ParamByName('FIELD5').Value := str_set1[4];
    SET_SCORE_INS.ParamByName('FIELD6').Value := str_set1[5];
    SET_SCORE_INS.ExecProc;
    //set2 score...
    SET_SCORE_INS.ParamByName('GAME_ID').Value := CURRENT_GAME_ID;
    SET_SCORE_INS.ParamByName('SET_NO').Value := 2;
    SET_SCORE_INS.ParamByName('FIELD1').Value := str_set2[0];
    SET_SCORE_INS.ParamByName('FIELD2').Value := str_set2[1];
    SET_SCORE_INS.ParamByName('FIELD3').Value := str_set2[2];
    SET_SCORE_INS.ParamByName('FIELD4').Value := str_set2[3];
    SET_SCORE_INS.ParamByName('FIELD5').Value := str_set2[4];
    SET_SCORE_INS.ParamByName('FIELD6').Value := str_set2[5];
    SET_SCORE_INS.ExecProc;
    //set3 score...
    SET_SCORE_INS.ParamByName('GAME_ID').Value := CURRENT_GAME_ID;
    SET_SCORE_INS.ParamByName('SET_NO').Value := 3;
    SET_SCORE_INS.ParamByName('FIELD1').Value := str_set3[0];
    SET_SCORE_INS.ParamByName('FIELD2').Value := str_set3[1];
    SET_SCORE_INS.ParamByName('FIELD3').Value := str_set3[2];
    SET_SCORE_INS.ParamByName('FIELD4').Value := str_set3[3];
    SET_SCORE_INS.ParamByName('FIELD5').Value := str_set3[4];
    SET_SCORE_INS.ParamByName('FIELD6').Value := str_set3[5];
    SET_SCORE_INS.ExecProc;
    //set4 score...
    SET_SCORE_INS.ParamByName('GAME_ID').Value := CURRENT_GAME_ID;
    SET_SCORE_INS.ParamByName('SET_NO').Value := 4;
    SET_SCORE_INS.ParamByName('FIELD1').Value := str_set4[0];
    SET_SCORE_INS.ParamByName('FIELD2').Value := str_set4[1];
    SET_SCORE_INS.ParamByName('FIELD3').Value := str_set4[2];
    SET_SCORE_INS.ParamByName('FIELD4').Value := str_set4[3];
    SET_SCORE_INS.ParamByName('FIELD5').Value := str_set4[4];
    SET_SCORE_INS.ParamByName('FIELD6').Value := str_set4[5];
    SET_SCORE_INS.ExecProc;
    //set5 score...
    SET_SCORE_INS.ParamByName('GAME_ID').Value := CURRENT_GAME_ID;
    SET_SCORE_INS.ParamByName('SET_NO').Value := 5;
    SET_SCORE_INS.ParamByName('FIELD1').Value := str_set5[0];
    SET_SCORE_INS.ParamByName('FIELD2').Value := str_set5[1];
    SET_SCORE_INS.ParamByName('FIELD3').Value := str_set5[2];
    SET_SCORE_INS.ParamByName('FIELD4').Value := str_set5[3];
    SET_SCORE_INS.ParamByName('FIELD5').Value := str_set5[4];
    SET_SCORE_INS.ParamByName('FIELD6').Value := str_set5[5];
    SET_SCORE_INS.ExecProc;
  finally
    str_set1.Free;
    str_set2.Free;
    str_set3.Free;
    str_set4.Free;
    str_set5.Free;
  end;
end;

procedure TfmDataTransactions.GetPlayerData;
var
  i, sLine, eLine : Integer;
  stlist : TStringList;
begin
  stlist := TStringList.Create;
  try
    //home team player
    sLine := GetLineNumber('[3PLAYERS-H]') + 1;
    eLine := GetLineNumber('[3PLAYERS-V]');
    for i := sLine to eLine - 1 do begin
      Split(';', DATA_STRINGS.Strings[i], stlist) ;
      PLAYER_DATA_INS.ParamByName('GAME_ID').Value :=   CURRENT_GAME_ID;
      PLAYER_DATA_INS.ParamByName('TEAM_KIND').Value := stlist[0];
      PLAYER_DATA_INS.ParamByName('TEAM_IDX').Value :=  stlist[1];
      PLAYER_DATA_INS.ParamByName('ALL_IDX').Value :=   stlist[2];
      PLAYER_DATA_INS.ParamByName('SET1').Value :=      stlist[3];
      PLAYER_DATA_INS.ParamByName('SET2').Value :=      stlist[4];
      PLAYER_DATA_INS.ParamByName('SET3').Value :=      stlist[5];
      PLAYER_DATA_INS.ParamByName('SET4').Value :=      stlist[6];
      PLAYER_DATA_INS.ParamByName('SET5').Value :=      stlist[7];
      PLAYER_DATA_INS.ParamByName('NAME_E').Value :=    stlist[8];
      PLAYER_DATA_INS.ParamByName('NAME_K').Value :=    stlist[9];
      PLAYER_DATA_INS.ParamByName('A_KIND').Value :=    stlist[12];
      PLAYER_DATA_INS.ExecProc;
    end;
    //away team player
    sLine := GetLineNumber('[3PLAYERS-V]') + 1;
    eLine := GetLineNumber('[3ATTACKCOMBINATION]');
    for i := sLine to eLine - 1 do begin
      Split(';', DATA_STRINGS.Strings[i], stlist) ;
      PLAYER_DATA_INS.ParamByName('GAME_ID').Value :=   CURRENT_GAME_ID;
      PLAYER_DATA_INS.ParamByName('TEAM_KIND').Value := stlist[0];
      PLAYER_DATA_INS.ParamByName('TEAM_IDX').Value :=  stlist[1];
      PLAYER_DATA_INS.ParamByName('ALL_IDX').Value :=   stlist[2];
      PLAYER_DATA_INS.ParamByName('SET1').Value :=      stlist[3];
      PLAYER_DATA_INS.ParamByName('SET2').Value :=      stlist[4];
      PLAYER_DATA_INS.ParamByName('SET3').Value :=      stlist[5];
      PLAYER_DATA_INS.ParamByName('SET4').Value :=      stlist[6];
      PLAYER_DATA_INS.ParamByName('SET5').Value :=      stlist[7];
      PLAYER_DATA_INS.ParamByName('NAME_E').Value :=    stlist[8];
      PLAYER_DATA_INS.ParamByName('NAME_K').Value :=    stlist[9];
      PLAYER_DATA_INS.ParamByName('A_KIND').Value :=    stlist[12];
      PLAYER_DATA_INS.ExecProc;
    end;
  finally
    stlist.Free;
  end;
end;
procedure TfmDataTransactions.GetAttackCombiData;
var
  i, sLine, eLine : Integer;
  stlist : TStringList;
begin
  stlist := TStringList.Create;
  try
    //home team player
    sLine := GetLineNumber('[3ATTACKCOMBINATION]') + 1;
    eLine := GetLineNumber('[3SETTERCALL]');
    for i := sLine to eLine - 1 do begin
      Split(';', DATA_STRINGS.Strings[i], stlist) ;
      ATTACK_COMBINATION_INS.ParamByName('GAME_ID').Value := CURRENT_GAME_ID;
      ATTACK_COMBINATION_INS.ParamByName('FIELD1').Value := stlist[0];
      ATTACK_COMBINATION_INS.ParamByName('FIELD2').Value := stlist[1];
      ATTACK_COMBINATION_INS.ParamByName('FIELD3').Value := stlist[2];
      ATTACK_COMBINATION_INS.ParamByName('FIELD4').Value := stlist[3];
      ATTACK_COMBINATION_INS.ParamByName('FIELD5').Value := stlist[4];
      ATTACK_COMBINATION_INS.ParamByName('FIELD6').Value := stlist[5];
      ATTACK_COMBINATION_INS.ParamByName('FIELD7').Value := stlist[6];
      ATTACK_COMBINATION_INS.ParamByName('FIELD8').Value := stlist[7];
      ATTACK_COMBINATION_INS.ParamByName('FIELD9').Value := stlist[8];
      ATTACK_COMBINATION_INS.ParamByName('FIELD10').Value := stlist[9];
      ATTACK_COMBINATION_INS.ExecProc;
    end;
  finally
    stlist.Free;
  end;
end;

procedure TfmDataTransactions.GetSetterCallData;
var
  i, sLine, eLine : Integer;
  stlist : TStringList;
begin
  stlist := TStringList.Create;
  try
    //home team player
    sLine := GetLineNumber('[3SETTERCALL]') + 1;
    eLine := GetLineNumber('[3WINNINGSYMBOLS');
    for i := sLine to eLine - 1 do begin
      Split(';', DATA_STRINGS.Strings[i], stlist) ;
      SETTER_CALL_INS.ParamByName('GAME_ID').Value := CURRENT_GAME_ID;
      SETTER_CALL_INS.ParamByName('FIELD1').Value := stlist[0];
      SETTER_CALL_INS.ParamByName('FIELD2').Value := stlist[1];
      SETTER_CALL_INS.ParamByName('FIELD3').Value := stlist[2];
      SETTER_CALL_INS.ParamByName('FIELD4').Value := stlist[3];
      SETTER_CALL_INS.ParamByName('FIELD5').Value := stlist[4];
      SETTER_CALL_INS.ParamByName('FIELD6').Value := stlist[5];
      SETTER_CALL_INS.ParamByName('FIELD7').Value := stlist[6];
      SETTER_CALL_INS.ParamByName('FIELD8').Value := stlist[7];
      SETTER_CALL_INS.ParamByName('FIELD9').Value := stlist[8];
      SETTER_CALL_INS.ParamByName('FIELD10').Value := stlist[9];
      SETTER_CALL_INS.ExecProc;
    end;
  finally
    stlist.Free;
  end;
end;

procedure TfmDataTransactions.GetActionData;
var
  lCount, i, fLine : Integer;
  found : Boolean;
  stlist : TStringList;
  player_no : Integer;
begin
  stlist := TStringList.Create;
  try
    fLine := GetLineNumber('[3SCOUT]') + 1;
    lCount := DATA_STRINGS.Count;
    Gauge1.Visible := True;
    Gauge1.MaxValue := lCount;
    Gauge1.Progress := 0;
    for i := fLine to lCount - 1 do begin
      if Length(DATA_STRINGS.Strings[i]) > 10 then begin
        Split(';', DATA_STRINGS.Strings[i], stlist) ;
        player_no := GetPlayerNumber(stlist[0]);
        TRANSACTION_DATA_INS.ParamByName('GAME_ID').Value := CURRENT_GAME_ID;
        TRANSACTION_DATA_INS.ParamByName('FIELD1').Value := stlist[0];
        TRANSACTION_DATA_INS.ParamByName('FIELD2').Value := GetBaseTechnic(stlist[0]);
        TRANSACTION_DATA_INS.ParamByName('FIELD3').Value := GetBallType(stlist[0]);
        TRANSACTION_DATA_INS.ParamByName('FIELD4').Value := GetActionResult(stlist[0]);
        TRANSACTION_DATA_INS.ParamByName('FIELD5').Value := GetCombination(stlist[0]);
        TRANSACTION_DATA_INS.ParamByName('FIELD6').Value := stlist[5];
        TRANSACTION_DATA_INS.ParamByName('FIELD7').Value := stlist[6];
        TRANSACTION_DATA_INS.ParamByName('FIELD8').Value := stlist[7];
        TRANSACTION_DATA_INS.ParamByName('FIELD9').Value := stlist[8];
        TRANSACTION_DATA_INS.ParamByName('FIELD10').Value := stlist[9];
        TRANSACTION_DATA_INS.ParamByName('FIELD11').Value := stlist[10];
        TRANSACTION_DATA_INS.ParamByName('FIELD12').Value := stlist[11];
        TRANSACTION_DATA_INS.ParamByName('FIELD13').Value := stlist[12];
        TRANSACTION_DATA_INS.ParamByName('FIELD14').Value := stlist[13];
        TRANSACTION_DATA_INS.ParamByName('FIELD15').Value := stlist[14];
        TRANSACTION_DATA_INS.ParamByName('FIELD16').Value := stlist[15];
        TRANSACTION_DATA_INS.ParamByName('FIELD17').Value := stlist[16];
        TRANSACTION_DATA_INS.ParamByName('FIELD18').Value := stlist[17];
        TRANSACTION_DATA_INS.ParamByName('FIELD19').Value := stlist[18];
        TRANSACTION_DATA_INS.ParamByName('FIELD20').Value := stlist[19];
        TRANSACTION_DATA_INS.ParamByName('FIELD21').Value := stlist[20];
        TRANSACTION_DATA_INS.ParamByName('FIELD22').Value := stlist[21];
        TRANSACTION_DATA_INS.ParamByName('FIELD23').Value := stlist[22];
        TRANSACTION_DATA_INS.ParamByName('FIELD24').Value := stlist[23];
        TRANSACTION_DATA_INS.ParamByName('FIELD25').Value := stlist[24];
        TRANSACTION_DATA_INS.ParamByName('FIELD26').Value := stlist[25];
        TRANSACTION_DATA_INS.ParamByName('PLAYER_IDX').Value := player_no;
        TRANSACTION_DATA_INS.ExecProc;
      end;
      Gauge1.Progress := i+1;
      Gauge1.Refresh;
    end;
  finally
    Gauge1.Visible := False;
    stlist.Free;
  end;
end;

function TfmDataTransactions.GetPlayerNumber(action_str : string) : Integer;
var
  str_team, str_player : string;
  team_no, int_player : Integer;
begin
  str_team := Copy(action_str, 1, 1);
  str_player := Copy(action_str, 2, 2);
  if TryStrToInt(str_player, int_player) then begin
    if str_team = '*' then
      team_no := 0
    else
      team_no := 1;
    GET_PLAYER_NUMBER.ParamByName('G_ID').Value := CURRENT_GAME_ID;
    GET_PLAYER_NUMBER.ParamByName('TEAM').Value := team_no;
    GET_PLAYER_NUMBER.ParamByName('IDX').Value := StrToInt(str_player);
    GET_PLAYER_NUMBER.Active := True;
    ds_GET_PLAYER_NUMBER.DataSet.Refresh;
    Result := GET_PLAYER_NUMBERID.Value;
  end else begin
    Result := 0;
  end;
end;

function TfmDataTransactions.GetBaseTechnic(action_str : string) : String;
var
  str_player : string;
  str_result : Integer;
begin
  str_player := Copy(action_str, 2, 2);
  if TryStrToInt(str_player, str_result) then
    Result := Copy(action_str, 4, 1)
  else
    Result := '';
end;

function TfmDataTransactions.GetBallType(action_str : string) : string;
var
  str_player : string;
  str_result : Integer;
begin
  str_player := Copy(action_str, 2, 2);
  if TryStrToInt(str_player, str_result) then
    Result := Copy(action_str, 5, 1)
  else
    Result := '';
end;

function TfmDataTransactions.GetActionResult(action_str : string) : string;
var
  str_player : string;
  str_result : Integer;
begin
  str_player := Copy(action_str, 2, 2);
  if TryStrToInt(str_player, str_result) then
    Result := Copy(action_str, 6, 1)
  else
    Result := '';
end;

function TfmDataTransactions.GetCombination(action_str : string) : Integer;
var
  str_team, str_player, attack_combi : string;
  team_no, int_player : Integer;
begin
  str_player := Copy(action_str, 2, 2);
  if TryStrToInt(str_player, int_player) then begin
    attack_combi := Copy(action_str, 7, 2);
    ATTACK_COMBINATION_KIND_SEL.ParamByName('G_ID').Value := CURRENT_GAME_ID;
    ATTACK_COMBINATION_KIND_SEL.ParamByName('COMBI_CODE').Value := attack_combi;
    ATTACK_COMBINATION_KIND_SEL.Active := True;
    ds_ATTACK_COMBINATION_KIND_SEL.DataSet.Refresh;
    Result := ATTACK_COMBINATION_KIND_SELID.Value;
  end else begin
    Result := 0;
  end;
end;

procedure TfmDataTransactions.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmDataTransactions.FormShow(Sender: TObject);
begin
  cxPageControl1.ActivePageIndex := 0;
end;

procedure TfmDataTransactions.gridDatafield15CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  ACanvas.Brush.Color := clYellow;
  ACanvas.Font.Color := clBlack;
  ACanvas.Font.Style := [fsBold];
end;

procedure TfmDataTransactions.gridDatafield21CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  ACanvas.Brush.Color := clLime;
  ACanvas.Font.Color := clBlack;
  ACanvas.Font.Style := [fsBold];
end;

initialization RegisterClasses([TfmDataTransactions]);

end.
