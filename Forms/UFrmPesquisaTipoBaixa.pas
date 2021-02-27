unit UFrmPesquisaTipoBaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPesquisaPadrao, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TfrmPesquisaTipoBaixa = class(TFrmPesquisaPadrao)
  private
    { Private declarations }
  public
    { Public declarations }
  protected
   procedure AbreCadastro(); override;
  end;

var
  frmPesquisaTipoBaixa: TfrmPesquisaTipoBaixa;

implementation

{$R *.dfm}

uses DM_Principal, UFrmCadastroTipoBaixa;

procedure TFrmPesquisaTipoBaixa.AbreCadastro;
begin
  Application.CreateForm(TFrmCadastroTipoBaixa, frmCadastroTipoBaixa);
  frmCadastroTipoBaixa.ShowModal;
end;

end.
