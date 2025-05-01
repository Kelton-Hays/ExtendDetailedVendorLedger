query 50102 InvoicesPaidQuery
{
    QueryType = Normal;

    elements
    {
        dataitem(InvoiceVLE; "Vendor Ledger Entry")
        {
            DataItemTableFilter = "Document Type" = const(Invoice);

            column(InvoiceEntryNo; "Entry No.") { }
            column(InvoiceNo; "Document No.") { }
            column(InvoiceDate; "Posting Date") { }
            column(VendorNo; "Vendor No.") { }
            column(InvoiceAmount; Amount) { }
            column(RemainingAmount; "Remaining Amount") { }

            dataitem(DVLE; "Detailed Vendor Ledg. Entry")
            {
                LinkFields = "Vendor Ledger Entry No." = InvoiceVLE."Entry No.";

                column(ApplicationDate; "Posting Date") { }
                column(AppliedEntryNo; "Applied Vend. Ledger Entry No.") { }

                dataitem(PaymentVLE; "Vendor Ledger Entry")
                {
                    LinkFields = "Entry No." = DVLE."Applied Vend. Ledger Entry No.";
                    DataItemTableFilter = "Document Type" = const(Payment);

                    column(PaymentDocNo; "Document No.") { }
                    column(PaymentAmount; Amount) { }
                    column(PaymentDate; "Posting Date") { }
                }
            }
        }
    }
}