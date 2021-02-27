unit UFrmCadastroTipoBaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmCadastroPadrao, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TfrmCadastroTipoBaixa = class(TFrmCadastroPadrao)
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroTipoBaixa: TfrmCadastroTipoBaixa;

implementation

{$R *.dfm}

uses DM_Principal;

procedure TfrmCadastroTipoBaixa.FormCreate(Sender: TObject);
begin
  Tabelas.FDConexao.Connected := True;
  Tabelas.qryBaixa_Tipos.Open();

  inherited;
end;

procedure TfrmCadastroTipoBaixa.FormShow(Sender: TObject);
begin
  DBEdit2.SetFocus;

  inherited;
end;

end.
