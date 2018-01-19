program DartConverter;

uses
  Forms,
  Dialogs,
  Controls,
  UfmMain in 'UfmMain.pas' {fmMain},
  UfmDataView in 'UfmDataView.pas' {fmDataView},
  UfmDataTransactions in 'UfmDataTransactions.pas' {fmDataTransactions},
  Udatamodule in 'Udatamodule.pas' {DataModule1: TDataModule},
  UfmGameSelect in 'UfmGameSelect.pas' {fmGameSelect},
  UfmGameEdit in 'UfmGameEdit.pas' {fmGameEdit},
  UfmVideoPlayer in 'UfmVideoPlayer.pas' {fmVideoPlayer},
  UfmRequestRegistration in 'UfmRequestRegistration.pas' {fmRequestRegistration},
  uLogin in 'uLogin.pas' {fmLogin},
  CommonLogic in 'CommonLogic.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'DataVolley Manager';

  fmLogin := TfmLogin.Create(Application);
  if fmLogin.ShowModal = mrOk then begin
    Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfmMain, fmMain);
  Application.Run;
  end else begin
    Application.Terminate;
    Application.Run;
  end;

end.
