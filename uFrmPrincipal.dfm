object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Gerador de ETLs'
  ClientHeight = 368
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 505
    Height = 327
    Align = alClient
    TabOrder = 0
    object lblTabelaOriginal: TLabel
      Left = 9
      Top = 40
      Width = 101
      Height = 17
      Caption = 'Tabela original:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblColunasOriginal: TLabel
      Left = 9
      Top = 63
      Width = 56
      Height = 17
      Caption = 'Colunas:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTabelaDestino: TLabel
      Left = 9
      Top = 95
      Width = 100
      Height = 17
      Caption = 'Tabela destino:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblColunasDestino: TLabel
      Left = 9
      Top = 122
      Width = 56
      Height = 17
      Caption = 'Colunas:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNomeCursor: TLabel
      Left = 8
      Top = 12
      Width = 119
      Height = 17
      Caption = 'Nome para cursor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnlMemo: TPanel
      Left = 1
      Top = 168
      Width = 503
      Height = 158
      Align = alBottom
      TabOrder = 5
      object mmoEtl: TMemo
        Left = 1
        Top = 1
        Width = 501
        Height = 156
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 0
        WordWrap = False
      end
    end
    object edtTabelaOriginal: TEdit
      Left = 116
      Top = 36
      Width = 373
      Height = 21
      TabOrder = 1
      OnKeyPress = edtAtalho
    end
    object edtColunasOrigem: TEdit
      Left = 116
      Top = 63
      Width = 373
      Height = 21
      TabOrder = 2
      OnKeyPress = edtAtalho
    end
    object edtColunasDestino: TEdit
      Left = 116
      Top = 122
      Width = 373
      Height = 21
      TabOrder = 4
      OnKeyPress = edtAtalho
    end
    object edtTabelaDestino: TEdit
      Left = 115
      Top = 95
      Width = 373
      Height = 21
      TabOrder = 3
      OnKeyPress = edtAtalho
    end
    object edtNomeCursor: TEdit
      Left = 133
      Top = 9
      Width = 355
      Height = 21
      TabOrder = 0
      OnKeyPress = edtAtalho
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 327
    Width = 505
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnGerar: TSpeedButton
      Left = 423
      Top = 1
      Width = 81
      Height = 39
      Align = alRight
      Caption = 'Gerar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnGerarClick
      ExplicitLeft = 424
      ExplicitTop = 4
    end
    object btnFechar: TSpeedButton
      Left = 1
      Top = 1
      Width = 81
      Height = 39
      Align = alLeft
      Caption = 'Fechar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnFecharClick
      ExplicitLeft = 312
      ExplicitTop = 6
      ExplicitHeight = 32
    end
  end
end
