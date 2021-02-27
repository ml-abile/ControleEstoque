program Zion;

uses
  Vcl.Forms,
  Ufrmprincipal in 'Forms\Ufrmprincipal.pas' {frmPrincipal},
  DM_Principal in 'Modules\DM_Principal.pas' {Tabelas: TDataModule},
  UFrmCadastroPadrao in 'Forms\UFrmCadastroPadrao.pas' {FrmCadastroPadrao},
  UFrmMensagem in 'Forms\UFrmMensagem.pas' {FrmMensagem},
  UFrmPesquisaPadrao in 'Forms\UFrmPesquisaPadrao.pas' {FrmPesquisaPadrao},
  UFrmCadastroProdutos in 'Forms\UFrmCadastroProdutos.pas' {FrmCadastroProdutos},
  UFrmPesquisaProdutos in 'Forms\UFrmPesquisaProdutos.pas' {FrmPesquisaProdutos},
  UfrmCadastroBaixaEstoque in 'Forms\UfrmCadastroBaixaEstoque.pas' {frmCadastroBaixaEstoque},
  UFrmCadastroTipoBaixa in 'Forms\UFrmCadastroTipoBaixa.pas' {frmCadastroTipoBaixa},
  UFrmPesquisaBaixaEstoque in 'Forms\UFrmPesquisaBaixaEstoque.pas' {frmPesquisaBaixaEstoque},
  UFrmPesquisaTipoBaixa in 'Forms\UFrmPesquisaTipoBaixa.pas' {frmPesquisaTipoBaixa},
  UFrmRelBaixas in 'Forms\UFrmRelBaixas.pas' {frmRelBaixas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TTabelas, Tabelas);
  Application.CreateForm(TFrmCadastroPadrao, FrmCadastroPadrao);
  Application.CreateForm(TFrmMensagem, FrmMensagem);
  Application.CreateForm(TFrmPesquisaPadrao, FrmPesquisaPadrao);
  Application.CreateForm(TFrmCadastroProdutos, FrmCadastroProdutos);
  Application.CreateForm(TFrmPesquisaProdutos, FrmPesquisaProdutos);
  Application.CreateForm(TfrmCadastroBaixaEstoque, frmCadastroBaixaEstoque);
  Application.CreateForm(TfrmCadastroTipoBaixa, frmCadastroTipoBaixa);
  Application.CreateForm(TfrmPesquisaBaixaEstoque, frmPesquisaBaixaEstoque);
  Application.CreateForm(TfrmPesquisaTipoBaixa, frmPesquisaTipoBaixa);
  Application.CreateForm(TfrmRelBaixas, frmRelBaixas);
  Application.Run;
end.
