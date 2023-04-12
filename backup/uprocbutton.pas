unit uprocbutton;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    procedure ButtonAction(Sender:TObject);
    procedure makeAButton(var btn:TButton);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  newBut:TButton;
  nPan:TPanel;

implementation

{$R *.lfm}

procedure TForm1.ButtonAction(Sender:TObject);
begin
  ShowMessage('I am clicked!');
end;

procedure TForm1.makeAButton(var btn:TButton);
begin

  nPan:=TPanel.Create(self);
  with nPan do
  begin
    Left:=10;
    Top:=10;
    Width:=Form1.ClientWidth-20;
    Height:=Form1.ClientHeight-20;
    Parent:=self;
  end;

  btn:=TButton.Create(self);
  with btn do
  begin
    Parent:=nPan;
    Left:=10;
    Top:=10;
    Width:=200;
    Height:=25;
    Caption:='I, Button';
    OnClick:=@ButtonAction;
  end;
end;

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  makeAButton(newBut);
end;

end.

