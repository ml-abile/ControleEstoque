unit UFrmPesquisaProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPesquisaPadrao, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TFrmPesquisaProdutos = class(TFrmPesquisaPadrao)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
  procedure AbreCadastro(); override;
  end;

var
  FrmPesquisaProdutos: TFrmPesquisaProdutos;

implementation

{$R *.dfm}

uses DM_Principal, UFrmCadastroProdutos, UfrmCadastroBaixaEstoque;

{ TFrmPesquisaProdutos }

procedure TFrmPesquisaProdutos.AbreCadastro;
begin
  Application.CreateForm(TFrmCadastroProdutos, FrmCadastroProdutos);
  FrmCadastroProdutos.ShowModal;
end;

procedure TFrmPesquisaProdutos.FormShow(Sender: TObject);
begin
  Tabelas.qryProdutos.Refresh;

  inherited;
end;

end.
