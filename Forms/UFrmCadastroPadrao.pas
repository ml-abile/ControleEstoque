unit UFrmCadastroPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Dm_Principal, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.Actions, Vcl.ActnList, Data.DB;

type
  TFrmCadastroPadrao = class(TForm)
    Panel1: TPanel;
    BtnExcluir: TButton;
    BtnCancelar: TButton;
    BtnVoltar: TButton;
    BtnSalvar: TButton;
    PnlDados: TPanel;
    Panel2: TPanel;
    ActionList1: TActionList;
    dts: TDataSource;
    actSalvar: TAction;
    ActCancelar: TAction;
    actExcluir: TAction;
    actVoltar: TAction;
    procedure actVoltarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dtsDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    editou : boolean;
  public
    { Public declarations }
  end;

var
  FrmCadastroPadrao: TFrmCadastroPadrao;

implementation

{$R *.dfm}

uses UFrmMensagem;

procedure TFrmCadastroPadrao.ActCancelarExecute(Sender: TObject);
begin
  dts.DataSet.Cancel;     // Cancelar a edição dos dados
  Close;
end;

procedure TFrmCadastroPadrao.actExcluirExecute(Sender: TObject);
begin
  if FrmMensagem.Mensagem('Confirma a exclusão?',
    'A exclusão do registro apresentado não poderá ser desfeita!!', msgSimNao) = mrYes then
  begin
    dts.DataSet.Cancel;
    dts.DataSet.Delete;
    FrmMensagem.Mensagem('Exclusão concluída com sucesso!', '', msgOk);
    Close;
  end;
end;

procedure TFrmCadastroPadrao.actSalvarExecute(Sender: TObject);
var mensagem : string;
begin
  if dts.DataSet.State = dsInsert then
    mensagem := 'Cadastro realizado com sucesso!'
  else
    mensagem := 'Alterações realizadas com sucesso!';

  dts.DataSet.Post;
  Tabelas.FDConexao.Commit;
  FrmMensagem.Mensagem(mensagem, '', msgOk);
  Close;
end;

procedure TFrmCadastroPadrao.actVoltarExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadastroPadrao.dtsDataChange(Sender: TObject; Field: TField);
begin
  editou := True;
end;

procedure TFrmCadastroPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
var retorno : integer;
begin
  retorno := 0;

  if (dts.DataSet.State = dsInsert) and editou then
    retorno := FrmMensagem.Mensagem('Sair sem Salvar?',
      'Existem dados em inclusão! Confirma o cancelamento do cadastro e o fechamento do formulário?',
      msgSimNao)
  else if (dts.DataSet.State = dsEdit) and editou then
    retorno := FrmMensagem.Mensagem('Sair sem Salvar?',
      'Existem dados em alteração! Confirma o cancelamento das alterações e o fechamento do formulário?',
      msgSimNao);

  if retorno = mrNo then
    Abort
  else
    if (dts.DataSet.State in [dsInsert, dsEdit]) then
      dts.DataSet.Cancel;
end;

procedure TFrmCadastroPadrao.FormShow(Sender: TObject);
begin
  editou := False;
  if dts.DataSet.State = dsInsert then
    actExcluir.Enabled := false
  else
    actExcluir.Enabled := true;
end;

end.
