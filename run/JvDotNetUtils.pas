{-----------------------------------------------------------------------------
The contents of this file are subject to the Mozilla Public License
Version 1.1 (the "License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at
http://www.mozilla.org/MPL/MPL-1.1.html

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either expressed or implied. See the License for
the specific language governing rights and limitations under the License.

The Original Code is: JvDotNetUtils.PAS, released on 2004-01-01.

The Initial Developer of the Original Code is Marc Hoffman.
Portions created by Marc Hoffman are Copyright (C) 2002 APRIORI business solutions AG.
Portions created by APRIORI business solutions AG are Copyright (C) 2002 APRIORI business solutions AG
All Rights Reserved.

Contributor(s):

Last Modified: 2004-01-01

You may retrieve the latest version of this file at the Project JEDI's JVCL home page,
located at http://jvcl.sourceforge.net

Known Issues:
-----------------------------------------------------------------------------}
{$I jvcl.inc}

unit JvDotNetUtils;

interface
uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls;

procedure DotNetMessageHandler(var Message:TMessage; AControl: TWinControl; AColor:TColor; var InControl: Boolean);
procedure DrawDotNetControl(Control: TWinControl; AColor:TColor; InControl: Boolean);

implementation

procedure DotNetMessageHandler(var Message:TMessage; AControl: TWinControl; AColor:TColor; var InControl: Boolean);
begin
  if Message.Msg = CM_MOUSEENTER then
    InControl := True;
  if Message.Msg = CM_MOUSELEAVE then
    InControl := False;
  case Message.Msg of
    CM_MOUSEENTER, CM_MOUSELEAVE, WM_SETFOCUS, WM_KILLFOCUS, WM_NCPAINT:
      DrawDotNetControl(AControl, AColor, InControl);
  end;
end;

{-----------------------------------------------------------------------------
  Procedure: DrawDotNetControl
  Author:    mh
  Date:      25-Jun-2002
  Arguments: Control: TJvNetControl; AColor:TColor; InControl: Boolean
  Result:    None
-----------------------------------------------------------------------------}

procedure DrawDotNetControl(Control: TWinControl; AColor:TColor; InControl: Boolean);
var
  DC: HDC;
  R: TRect;
  Canvas: TCanvas;
begin
  DC := GetWindowDC(Control.Handle);
  try
    GetWindowRect(Control.Handle, R);
    OffsetRect(R, -R.Left, -R.Top);
    Canvas := TCanvas.Create;
    with Canvas do
    try
      Handle := DC;
      Brush.Color := clGray;
      if Control.Focused or InControl then
        Brush.Color := $00733800;
      FrameRect(R);
      InflateRect(R, -1, -1);
      if not (Control.Focused or InControl) then
        Brush.Color := AColor;
      FrameRect(R);
    finally // wrap up
      Free;
    end; // try/finally
  finally // wrap up
    ReleaseDC(Control.Handle, DC);
  end; // try/finally
end;

end.
