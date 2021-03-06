unit DM_Principal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, Vcl.ImgList,
  Vcl.Controls;

type
  TTabelas = class(TDataModule)
    FDConexao: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    qryProdutos: TFDQuery;
    qryProdutosPRODUTO_ID: TIntegerField;
    qryProdutosDESCRICAO: TStringField;
    qryProdutosUN: TStringField;
    qryProdutosESTOQUE_SALDO: TBCDField;
    qryProdutosENDERECO: TStringField;
    qryProdutosDATA_ENTRADA: TDateField;
    qryProdutosDATA_VENCIMENTO: TDateField;
    qryProdutosBAIXA_TIPO_ID: TIntegerField;
    qryBaixa_Tipos: TFDQuery;
    qryEstoque_Movimentos: TFDQuery;
    qryBaixa_TiposBAIXA_TIPO_ID: TIntegerField;
    qryBaixa_TiposTIPO: TStringField;
    img32: TImageList;
    qryProdutosTIPO: TStringField;
    qryEstoque_MovimentosESTOQUE_MOVIMENTOS_ID: TIntegerField;
    qryEstoque_MovimentosQTDE: TBCDField;
    qryEstoque_MovimentosPRODUTO_ID: TIntegerField;
    qryEstoque_MovimentosCADASTRADO: TSQLTimeStampField;
    qryEstoque_MovimentosOBS: TStringField;
    qryEstoque_MovimentosDESCRICAO: TStringField;
    sqlBaixaEstoque: TFDCommand;
    sqlAumentaEstoque: TFDCommand;
    procedure qryEstoque_MovimentosAfterPost(DataSet: TDataSet);
    procedure qryEstoque_MovimentosBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Tabelas: TTabelas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TTabelas.qryEstoque_MovimentosAfterPost(DataSet: TDataSet);
begin
  sqlBaixaEstoque.ParamByName('pProduto_id').Value := qryEstoque_Movimentos.FieldByName('PRODUTO_ID').Value;
  sqlBaixaEstoque.ParamByName('pQtde').Value := qryEstoque_Movimentos.FieldByName('QTDE').Value;
  sqlBaixaEstoque.Execute;
end;

procedure TTabelas.qryEstoque_MovimentosBeforeDelete(DataSet: TDataSet);
begin
  sqlAumentaEstoque.ParamByName('pProduto_id').Value := qryEstoque_Movimentos.FieldByName('PRODUTO_ID').Value;
  sqlAumentaEstoque.ParamByName('pQtde').Value := qryEstoque_Movimentos.FieldByName('QTDE').Value;
  sqlAumentaEstoque.Execute;
end;

end.
