object frmGridExport: TfrmGridExport
  Left = 709
  Top = 346
  BorderStyle = bsDialog
  Caption = 'Export seznamu'
  ClientHeight = 208
  ClientWidth = 414
  Color = clBtnFace
  Font.Charset = EASTEUROPE_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TcxButton
    Left = 328
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Exportovat'
    Default = True
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TcxButton
    Left = 248
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Storno'
    ModalResult = 2
    TabOrder = 3
  end
  object chkOpenAfterExport: TcxCheckBox
    Left = 16
    Top = 144
    Caption = 'Po exportu otev'#345#237't soubor'
    ParentFont = False
    Properties.Alignment = taLeftJustify
    TabOrder = 1
    Width = 233
  end
  object rbExportTyp: TcxRadioGroup
    Left = 8
    Top = 8
    Caption = ' Typ exportovan'#233'ho souboru '
    ParentFont = False
    Properties.DefaultValue = 0
    Properties.Items = <
      item
        Caption = 'HTML soubor (*.html)'
        Value = '0'
      end
      item
        Caption = 'XML soubor (*.xml)'
        Tag = 1
      end
      item
        Caption = 'Microsoft Excel 4.0 Tabulka (*.xls)'
        Tag = 2
      end
      item
        Caption = 'Textov'#253' soubor (*.txt)'
        Tag = 3
      end>
    ItemIndex = 0
    TabOrder = 0
    Height = 129
    Width = 393
  end
  object rsPropSaver1: TrsPropSaver
    FormPlacementOptions = [pfpPlacement]
    Storage = dmdSystem.rstrgForms
    RootSection = 'frmGridExport.Nastaveni'
    Properties.Strings = (
      'chkOpenAfterExport.Checked'
      'rbExportTyp.ItemIndex')
    WhenLoad = wlOnCreate
    WhenSave = wsOnClose
    Left = 16
    Top = 168
  end
end
