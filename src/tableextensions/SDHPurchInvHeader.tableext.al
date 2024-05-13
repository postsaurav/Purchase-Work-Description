tableextension 50002 "SDH Purch. Inv. Header" extends "Purch. Inv. Header"
{
    fields
    {
        field(50000; "SDH Work Description"; BLOB)
        {
            Caption = 'Work Description';
        }
    }

    procedure GetWorkDescription(): Text
    var
        TypeHelper: Codeunit "Type Helper";
        InStream: InStream;
    begin
        CalcFields("SDH Work Description");
        "SDH Work Description".CreateInStream(InStream, TEXTENCODING::UTF8);
        exit(TypeHelper.TryReadAsTextWithSepAndFieldErrMsg(InStream, TypeHelper.LFSeparator(), FieldName("SDH Work Description")));
    end;
}
