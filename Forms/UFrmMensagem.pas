unit UFrmMensagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type

  TTipo = (msgOk, msgErro, msgSimNao);

  TFrmMensagem = class(TForm)
    Panel1: TPanel;
    LblTipo: TLabel;
    LblTitulo: TLabel;
    lblMensagem: TLabel;
    Bevel1: TBevel;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
    tipoMensagem : TTipo;
  public
    { Public declarations }
    function Mensagem(Titulo: string; Texto: string; Tipo: TTipo) : TModalResult;
  end;

var
  FrmMensagem: TFrmMensagem;

implementation

{$R *.dfm}

procedure TFrmMensagem.btn1Click(Sender: TObject);
begin
  if tipoMensagem = msgOk then
    Close
  else
    ModalResult := mrNo;
end;

procedure TFrmMensagem.btn2Click(Sender: TObject);
begin
  ModalResult := mrYes;
end;

procedure TFrmMensagem.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btn1.Click;
end;

procedure TFrmMensagem.FormShow(Sender: TObject);
begin
  Panel1.Left := (Self.Width - Panel1.Width) div 2;
  Panel1.Top  := (Self.Height - Panel1.Height) div 2;
end;

function TFrmMensagem.Mensagem(Titulo, Texto: string; Tipo: TTipo): TModalResult;
begin
  tipoMensagem := Tipo;
  if (Tipo = msgOk) or (Tipo = msgSimNao) then
    LblTipo.Caption := ':)'
  else
    LblTipo.Caption := ':(';

  LblTitulo.Caption := Titulo;
  lblMensagem.Caption := Texto;

  if (Tipo = msgOk) or (Tipo = msgErro) then
  begin
    btn2.Visible := False;
    btn1.Caption := 'OK';
  end
  else
  begin
    btn2.Visible := True;
    btn1.Caption := 'Não';
  end;

  Mensagem := Self.ShowModal;

end;

end.
