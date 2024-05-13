tableextension 50000 "SDH Purchase Header" extends "Purchase Header"
{
    fields
    {
        field(50000; "SDH Work Description"; BLOB)
        {
            Caption = 'Work Description';
        }
    }

    procedure SetWorkDescription(NewWorkDescription: Text)
    var
        OutStream: OutStream;
    begin
        Clear("SDH Work Description");
        "SDH Work Description".CreateOutStream(OutStream, TEXTENCODING::UTF8);
        OutStream.WriteText(NewWorkDescription);
        Modify();
    end;

    procedure GetWorkDescription() WorkDescription: Text
    var
        TypeHelper: Codeunit "Type Helper";
        InStream: InStream;
    begin
        CalcFields("SDH Work Description");
        "SDH Work Description".CreateInStream(InStream, TEXTENCODING::UTF8);
        exit(TypeHelper.TryReadAsTextWithSepAndFieldErrMsg(InStream, TypeHelper.LFSeparator(), FieldName("SDH Work Description")));
    end;
}
