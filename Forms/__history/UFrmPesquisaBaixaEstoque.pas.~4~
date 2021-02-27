unit UFrmPesquisaBaixaEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPesquisaPadrao, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TfrmPesquisaBaixaEstoque = class(TFrmPesquisaPadrao)
  private
    { Private declarations }
  public
    { Public declarations }
  protected
  procedure AbreCadastro(); override;
  end;

var
  frmPesquisaBaixaEstoque: TfrmPesquisaBaixaEstoque;

implementation

{$R *.dfm}

uses DM_Principal, UfrmCadastroBaixaEstoque;

procedure TFrmPesquisaBaixaEstoque.AbreCadastro;
begin
  Application.CreateForm(TFrmCadastrobaixaEstoque, frmCadastrobaixaEstoque);
  frmCadastrobaixaEstoque.ShowModal;
end;

end.
