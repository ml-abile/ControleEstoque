inherited FrmPesquisaProdutos: TFrmPesquisaProdutos
  ClientHeight = 321
  ClientWidth = 715
  ExplicitWidth = 715
  ExplicitHeight = 321
  PixelsPerInch = 96
  TextHeight = 21
  inherited Panel1: TPanel
    Width = 715
    Caption = '       Produto'
    ExplicitWidth = 715
    inherited BtnImprimir: TButton
      Left = 558
      ExplicitLeft = 558
    end
    inherited BtnAlterar: TButton
      Left = 662
      ExplicitLeft = 662
    end
    inherited BtnIncluir: TButton
      Left = 610
      Top = 11
      ExplicitLeft = 610
      ExplicitTop = 11
    end
  end
  inherited Panel2: TPanel
    Top = 307
    Width = 715
    ExplicitTop = 307
    ExplicitWidth = 715
  end
  inherited PnlPesquisa: TPanel
    Width = 715
    Height = 19
    Visible = False
    ExplicitWidth = 715
    ExplicitHeight = 19
  end
  inherited DBGrid1: TDBGrid
    Top = 89
    Width = 715
    Height = 218
    TitleFont.Color = clInfoBk
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'PRODUTO_ID'
        Title.Caption = 'C'#243'digo'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Produto'
        Width = 256
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE_SALDO'
        Title.Caption = 'Estoque'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Title.Caption = 'Localiza'#231#227'o'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Title.Caption = 'Tipo de Baixa'
        Width = 120
        Visible = True
      end>
  end
  inherited ActionList1: TActionList
    Left = 435
    Top = 17
  end
  inherited dts: TDataSource
    DataSet = Tabelas.qryProdutos
    Left = 507
    Top = 17
  end
end
