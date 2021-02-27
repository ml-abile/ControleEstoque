unit UFrmRelBaixas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmCadastroPadrao, Vcl.StdCtrls,
  Vcl.ComCtrls, Data.DB, System.Actions, Vcl.ActnList, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmRelBaixas = class(TFrmCadastroPadrao)
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    {procedure actSalvarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);}
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelBaixas: TfrmRelBaixas;

implementation

{$R *.dfm}



procedure TfrmRelBaixas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {inherited;}

end;

end.
