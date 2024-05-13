codeunit 50000 "SDH Work Descr. Subscribers"
{

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnBeforeInsertInvoiceHeader', '', false, false)]
    local procedure CopySDHWorkDescriptionToInvoice(var PurchHeader: Record "Purchase Header")
    begin
        PurchHeader.CalcFields("SDH Work Description");
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnBeforeInsertReceiptHeader', '', false, false)]
    local procedure CopySDHWorkDescriptionToReceipt(var PurchHeader: Record "Purchase Header")
    begin
        PurchHeader.CalcFields("SDH Work Description");
    end;
}
