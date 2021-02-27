unit UfrmCadastroBaixaEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmCadastroPadrao, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadastroBaixaEstoque = class(TFrmCadastroPadrao)
    Label1: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBMemo1: TDBMemo;
    dts2: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroBaixaEstoque: TfrmCadastroBaixaEstoque;

implementation

{$R *.dfm}

uses DM_Principal;

procedure TfrmCadastroBaixaEstoque.FormCreate(Sender: TObject);
begin
  Tabelas.FDConexao.Connected := True;
  Tabelas.qryProdutos.Open();
  Tabelas.qryEstoque_Movimentos.Open();
  inherited;
end;

procedure TfrmCadastroBaixaEstoque.FormShow(Sender: TObject);
begin
  Tabelas.qryEstoque_Movimentos.FieldByName('CADASTRADO').Value := Now;

  inherited;
end;

end.
