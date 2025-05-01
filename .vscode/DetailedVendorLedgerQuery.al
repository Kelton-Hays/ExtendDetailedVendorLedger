query 50101 DetailedVendorLedgerQuery
{
    QueryType = Normal;

    elements
    {
        dataitem(DVLE; "Detailed Vendor Ledg. Entry")
        {
            column(EntryNo; "Entry No.") { }
            column(VendorLedgerEntryNo; "Vendor Ledger Entry No.") { }
            column(AppliedVendLedgerEntryNo; "Applied Vend. Ledger Entry No.") { }
            column(DocumentType; "Document Type") { }
            column(DocumentNo; "Document No.") { }
            column(PostingDate; "Posting Date") { }
            column(Amount; Amount) { }
            column(CurrencyCode; "Currency Code") { }
            column(UserID; "User ID") { }
            column(InitialDocumentType; "Initial Document Type") { }
            column(InitialEntryDueDate; "Initial Entry Due Date") { }
            column(TransactionNo; "Transaction No.") { }
            column(ApplicationNo; "Application No.") { }
            column(LedgerEntryAmount; "Ledger Entry Amount") { }
        }
    }
}
