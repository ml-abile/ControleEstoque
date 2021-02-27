unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, DM_Principal, Vcl.StdCtrls,
  Vcl.ToolWin, Vcl.ComCtrls, Vcl.Menus;

type
  TFrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BtnFechar: TButton;
    BtnMinimizar: TButton;
    btnProdutos: TButton;
    btnBaixaEstoque: TButton;
    btnRelatorios: TButton;
    btnTiposBaixa: TButton;
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnMinimizarClick(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnBaixaEstoqueClick(Sender: TObject);
    procedure btnTiposBaixaClick(Sender: TObject);
    procedure btnRelatoriosClick(Sender: TObject);
  private
    { Private declarations }
    procedure WMNCHitTest(var Msg: TWMNCHitTest) ; message WM_NCHitTest;
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses UFrmMensagem, UFrmCadastroProdutos, UFrmPesquisaProdutos, UfrmCadastroBaixaEstoque,
  UFrmPesquisaTipoBaixa, UFrmPesquisaBaixaEstoque, UFrmRelBaixas;

procedure TFrmPrincipal.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPrincipal.BtnMinimizarClick(Sender: TObject);
begin
  Self.WindowState := wsMinimized;
end;

procedure TFrmPrincipal.btnProdutosClick(Sender: TObject);
begin
  Application.CreateForm(TFrmPesquisaProdutos, FrmPesquisaProdutos);
  FrmPesquisaProdutos.ShowModal;
end;

procedure TFrmPrincipal.btnRelatoriosClick(Sender: TObject);
begin
  Application.CreateForm(TFrmRelBaixas, FrmRelBaixas);
  FrmRelBaixas.ShowModal;
end;

procedure TFrmPrincipal.btnTiposBaixaClick(Sender: TObject);
begin
  Application.CreateForm(TfrmPesquisaTipoBaixa, frmPesquisaTipoBaixa);
  frmPesquisaTipoBaixa.ShowModal;
end;

procedure TFrmPrincipal.btnBaixaEstoqueClick(Sender: TObject);
begin
  Application.CreateForm(TfrmPesquisaBaixaEstoque, frmPesquisaBaixaEstoque);
  frmPesquisaBaixaEstoque.ShowModal;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FrmMensagem.Mensagem('Sair do Sistema?', 'Confirma o fechamento do Sistema?',
     msgSimNao) = mrNo then
    Abort;
end;

procedure TFrmPrincipal.Panel1DblClick(Sender: TObject);
begin
  Self.WindowState := wsMaximized;
end;

procedure TFrmPrincipal.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(Self.Handle, WM_SYSCOMMAND, 61458, 0);
end;

procedure TFrmPrincipal.WMNCHitTest(var Msg: TWMNCHitTest);
begin
  inherited;
  if Msg.Result = htClient then Msg.Result := htCaption;
end;

end.
