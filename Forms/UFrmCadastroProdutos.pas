unit UFrmCadastroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmCadastroPadrao, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TFrmCadastroProdutos = class(TFrmCadastroPadrao)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    dts2: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroProdutos: TFrmCadastroProdutos;

implementation

{$R *.dfm}

uses DM_Principal;

procedure TFrmCadastroProdutos.FormCreate(Sender: TObject);
begin
  Tabelas.FDConexao.Connected := True;
  Tabelas.qryProdutos.Open();
  inherited;
end;

procedure TFrmCadastroProdutos.FormShow(Sender: TObject);
begin
  DBEdit2.SetFocus;

  inherited;
end;

end.
