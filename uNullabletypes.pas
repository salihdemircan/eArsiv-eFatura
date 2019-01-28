unit uNullableTypes;

interface

uses Generics.Defaults, SysUtils;

type

  Nullable<T> = record
  private
    FValue: T;
    FHasValue: IInterface;
    function GetValue: T;
    function GetHasValue: Boolean;

  public
    constructor Create(AValue: T);
    function GetValueOrDefault: T; overload;
    function GetValueOrDefault(Default: T): T; overload;
    property HasValue: Boolean read GetHasValue;
    property Value: T read GetValue;
    class operator NotEqual(const ALeft, ARight: Nullable<T>): Boolean;
    class operator Equal(ALeft, ARight: Nullable<T>): Boolean;
    class operator Implicit(Value: Nullable<T>): T;
    class operator Implicit(Value: T): Nullable<T>;
    class operator Explicit(Value: Nullable<T>): T;

  end;

procedure SetFlagInterface(var Intf: IInterface);

implementation

function NopAddref(inst: Pointer): Integer; stdcall;
begin
  Result := -1;
end;

function NopRelease(inst: Pointer): Integer; stdcall;
begin
  Result := -1;
end;

function NopQueryInterface(inst: Pointer; const IID: TGUID; out Obj)
  : HResult; stdcall;
begin
  Result := E_NOINTERFACE;
end;

const
  FlagInterfaceVTable: array [0 .. 2] of Pointer =
    (
    @NopQueryInterface,
    @NopAddref,
    @NopRelease
    );
  FlagInterfaceInstance: Pointer = @FlagInterfaceVTable;

procedure SetFlagInterface(var Intf: IInterface);
begin
  Intf := IInterface(@FlagInterfaceInstance);
end;

{ Nullable<T> }

constructor Nullable<T>.Create(AValue: T);
begin
  FValue := AValue;
  SetFlagInterface(FHasValue);
end;

class operator Nullable<T>.Equal(ALeft, ARight: Nullable<T>): Boolean;
var
  Comparer: IEqualityComparer<T>;
begin
  if ALeft.HasValue and ARight.HasValue then
  begin
    Comparer := TEqualityComparer<T>.Default;
    Result := Comparer.Equals(ALeft.Value, ARight.Value);
  end
  else
    Result := ALeft.HasValue = ARight.HasValue;
end;

class operator Nullable<T>.Explicit(Value: Nullable<T>): T;
begin
  Result := Value.Value;
end;

function Nullable<T>.GetHasValue: Boolean;
begin
  Result := FHasValue <> nil;
end;

function Nullable<T>.GetValue: T;
begin
  if not HasValue then
    raise Exception.Create('Invalid operation, Nullable type has no value');

  Result := FValue;
end;

function Nullable<T>.GetValueOrDefault: T;
begin
  if HasValue then
    Result := FValue
  else
    Result := Default (T);
end;

function Nullable<T>.GetValueOrDefault(Default: T): T;
begin
  if not HasValue then
    Result := Default
  else
    Result := FValue;
end;

class operator Nullable<T>.Implicit(Value: Nullable<T>): T;
begin
  Result := Value.Value;
end;

class operator Nullable<T>.Implicit(Value: T): Nullable<T>;
begin
  Result := Nullable<T>.Create(Value);
end;

class operator Nullable<T>.NotEqual(const ALeft, ARight: Nullable<T>): Boolean;
var
  Comparer: IEqualityComparer<T>;
begin
  if ALeft.HasValue and ARight.HasValue then
  begin
    Comparer := TEqualityComparer<T>.Default;
    Result := not Comparer.Equals(ALeft.Value, ARight.Value);
  end
  else
    Result := ALeft.HasValue <> ARight.HasValue;
end;

end.
