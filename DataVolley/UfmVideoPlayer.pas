unit UfmVideoPlayer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, WMPLib_TLB, StdCtrls, ExtCtrls, DB, dxmdaset, ActnList;

type
  TfmVideoPlayer = class(TForm)
    wmp: TWindowsMediaPlayer;
    dxMemData1: TdxMemData;
    dxMemData1video_file: TStringField;
    dxMemData1video_id: TIntegerField;
    dxMemData1media_idx: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    isLocalMode : Boolean;
    VIDEO_FILE_NAME : string;
    procedure SetPlaylist;
  end;

var
  fmVideoPlayer: TfmVideoPlayer;

implementation

{$R *.dfm}

procedure TfmVideoPlayer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmVideoPlayer.FormShow(Sender: TObject);
begin
  wmp.URL := VIDEO_FILE_NAME;
  wmp.settings.autoStart := True;
end;

procedure TfmVideoPlayer.SetPlaylist;
var
  Media: IWMPMedia;
  fname : string;
begin
//  dxMemData1.First;
//  while not dxMemData1.Eof do begin
//    if DataLocation = 1 then
//      fname := gsVideoFolder + dxMemData1video_file.AsString
//    else
//      if isLocalMode then
//        fname := gsVideoFolder + dxMemData1video_file.AsString
//      else
//        fname := 'mms://66.232.140.44/BadmintonMedia/' + dxMemData1video_file.AsString;
//
    Media := wmp.mediaCollection.add(VIDEO_FILE_NAME);
    wmp.currentPlaylist.appendItem(Media);
    dxMemData1.Next;
//  end;
  wmp.controls.currentItem := wmp.currentPlaylist.Item[0];
  Caption := 'Video Player - ' + wmp.currentPlaylist.Item[0].name;
end;

end.
