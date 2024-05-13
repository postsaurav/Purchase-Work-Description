tableextension 50001 "SDH Purch. Rcpt. Header" extends "Purch. Rcpt. Header"
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
