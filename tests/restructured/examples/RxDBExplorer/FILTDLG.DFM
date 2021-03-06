object FilterDialog: TFilterDialog
  Left = 271
  Top = 139
  ActiveControl = FilterEdit
  BorderStyle = bsDialog
  Caption = 'Filter'
  ClientHeight = 80
  ClientWidth = 258
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  PixelsPerInch = 96
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 4
    Width = 95
    Height = 13
    Caption = '&Table names filter:   '
    FocusControl = FilterEdit
  end
  object FilterEdit: TComboBox
    Left = 8
    Top = 20
    Width = 241
    Height = 21
    DropDownCount = 10
    ItemHeight = 13
    TabOrder = 3
    OnChange = FilterEditChange
  end
  object OkBtn: TButton
    Left = 98
    Top = 49
    Width = 74
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
    OnClick = OkBtnClick
  end
  object CancelBtn: TButton
    Left = 176
    Top = 49
    Width = 74
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object UpCaseBox: TCheckBox
    Left = 8
    Top = 52
    Width = 77
    Height = 17
    Caption = 'UpperCase'
    TabOrder = 2
    Visible = False
    OnClick = UpCaseBoxClick
  end
  object Storage: TJvFormStorage 
    IniSection = 'Filter Dialog'
    Options = []
    StoredProps.Strings = (
      'UpCaseBox.Checked')
    Left = 216
    Top = 4
  end
  object MRU: TJvMRUManager 
    Capacity = 15
    IniStorage = Storage
    ShowAccelChar = False
    Left = 188
    Top = 4
  end
end
