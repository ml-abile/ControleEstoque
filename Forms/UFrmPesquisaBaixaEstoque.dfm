inherited frmPesquisaBaixaEstoque: TfrmPesquisaBaixaEstoque
  Caption = 'frmPesquisaBaixaEstoque'
  ClientHeight = 339
  ClientWidth = 677
  ExplicitWidth = 677
  ExplicitHeight = 339
  PixelsPerInch = 96
  TextHeight = 21
  inherited Panel1: TPanel
    Width = 677
    Caption = '       Baixa de Estoque'
    ExplicitWidth = 702
    inherited BtnImprimir: TButton
      Left = 504
      ExplicitLeft = 529
    end
    inherited BtnAlterar: TButton
      Left = 616
      ExplicitLeft = 641
    end
    inherited BtnIncluir: TButton
      Left = 556
      Top = 9
      ExplicitLeft = 581
      ExplicitTop = 9
    end
  end
  inherited Panel2: TPanel
    Top = 325
    Width = 677
    ExplicitTop = 307
    ExplicitWidth = 702
  end
  inherited PnlPesquisa: TPanel
    Width = 677
    Height = 11
    ExplicitWidth = 702
    ExplicitHeight = 11
  end
  inherited DBGrid1: TDBGrid
    Top = 81
    Width = 677
    Height = 244
    Columns = <
      item
        Expanded = False
        FieldName = 'ESTOQUE_MOVIMENTOS_ID'
        Title.Caption = 'C'#243'digo'
        Width = 1
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRADO'
        Title.Caption = 'Data'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE'
        Title.Caption = 'Qtde'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Produto'
        Width = 227
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBS'
        Title.Caption = 'Observa'#231#227'o'
        Width = 276
        Visible = True
      end>
  end
  inherited dts: TDataSource
    DataSet = Tabelas.qryEstoque_Movimentos
  end
end
