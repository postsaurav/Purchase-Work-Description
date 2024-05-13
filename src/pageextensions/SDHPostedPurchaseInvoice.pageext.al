pageextension 50001 "SDH Posted Purchase Invoice" extends "Posted Purchase Invoice"
{

    layout
    {
        addlast(General)
        {
            group("Work Description")
            {
                Caption = 'Work Description';
                field(GetWorkDescription; Rec.GetWorkDescription())
                {
                    ApplicationArea = All;
                    Editable = false;
                    Importance = Additional;
                    MultiLine = true;
                    ShowCaption = false;
                }
            }
        }
    }
}
