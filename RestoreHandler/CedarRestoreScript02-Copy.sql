

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Client] ON
GO

INSERT [CedarSpaceDB].[dbo].[Client] 
([ClientId], [ClientName], [TradeAs], [ClientAddress], [ClientState], [ClientPostcode], [ClientPhone], [ClientMobile], [ClientHome], [ClientFax], [ClientEft], [ClientTownId], [TrustAccountBsb], [TrustAccountBankName], [TrustAccountBankId], [TrustAccountBankTown], [TrustAccountTownId], [TrustAccountReconNo], [TrustAccountBankShortName], [GeneralBankName], [GeneralBankId], [GeneralBankTown], [GeneralTownId], [GeneralBankBsb], [AgentFeeRate], [AdminFee], [AdminTitle], [Licensencee], [Signature], [ApcaReference], [BalanceBfwd], [CurrentBalance], [PreviousPeriod], [ArrearsFirst], [ArrearsLast], [ArrearAddress], [ArrearCount], [LetterHeads], [LetterHeadLen], [UseEft], [BankShortName], [GstTaxRate], [LordLeaseCost], [PaysGst], [ABN], [Acn], [MaxRentInAdvance], [MaxRentPerWeek], [MaxRentPerMonth], [FirstLettingFee], [SubsequentLettingFee], [Period], [ShowTenantMessages], [DoneDailyActions], [DoneWeeklyActions], [CpiRate], [RecPassword], [ResidentialBond], [CommerciallBond], [ClientEmail], [EmailPswd], [ClientLicence], [MaxProperties], [NumberOfUsers], [ExpiryDate], [SmtpServer], [EmailPort], [MonthsPeriodForInspection], [SmsApiUserId], [SmsApiUserPassword], [SmsApiNo], [SubDomain], [CorporateLicence], [CorporateLicensee], [BusinessAddress], [AutoEmailArrears], [AutoArrearsEmailDays], [AutoEmailScheduleRun])
SELECT 
[ClientId], [ClientName], [TradeAs], [ClientAddress], [ClientState], [ClientPostcode], [ClientPhone], [ClientMobile], [ClientHome], [ClientFax], [ClientEft], [ClientTownId], [TrustAccountBsb], [TrustAccountBankName], [TrustAccountBankId], [TrustAccountBankTown], [TrustAccountTownId], [TrustAccountReconNo], [TrustAccountBankShortName], [GeneralBankName], [GeneralBankId], [GeneralBankTown], [GeneralTownId], [GeneralBankBsb], [AgentFeeRate], [AdminFee], [AdminTitle], [Licensencee], [Signature], [ApcaReference], [BalanceBfwd], [CurrentBalance], [PreviousPeriod], [ArrearsFirst], [ArrearsLast], [ArrearAddress], [ArrearCount], [LetterHeads], [LetterHeadLen], [UseEft], [BankShortName], [GstTaxRate], [LordLeaseCost], [PaysGst], [ABN], [Acn], [MaxRentInAdvance], [MaxRentPerWeek], [MaxRentPerMonth], [FirstLettingFee], [SubsequentLettingFee], [Period], [ShowTenantMessages], [DoneDailyActions], [DoneWeeklyActions], [CpiRate], [RecPassword], [ResidentialBond], [CommerciallBond], [ClientEmail], [EmailPswd], [ClientLicence], [MaxProperties], [NumberOfUsers], [ExpiryDate], [SmtpServer], [EmailPort], [MonthsPeriodForInspection], [SmsApiUserId], [SmsApiUserPassword], [SmsApiNo], [SubDomain], [CorporateLicence], [CorporateLicensee], [BusinessAddress], [AutoEmailArrears], [AutoArrearsEmailDays], [AutoEmailScheduleRun]
FROM [CedarBackup].[dbo].[Client]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Client] OFF
GO


SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[WorkOrders] ON
GO
INSERT INTO [CedarSpaceDB].[dbo].[WorkOrders]
([ClientId],[PropertyNumber],[CreditorNumber],[AccountCode],[JobDescription],[RequestedBy],[ApprovedBy],[PriceQuoted],[QuoteNumber],[AmountWithGst],[Gst],[AmountWithoutGst],[CurrentStatus],[CreatedDate],[ModifyDate],[PendingDate],[QuoteRequestedDate],[AwaitingApprovalDate],[WorkOrderSentDate],[CompletedDate],[HoldDate],[JobNotes],[InvoiceNumber],[MethodOfApproval],[ApprovalDate],[RejectedBy],[RejectionReason],[RejectedDate],[UserId])
SELECT
[ClientId],[PropertyNumber],[CreditorNumber],[AccountCode],[JobDescription],[RequestedBy],[ApprovedBy],[PriceQuoted],[QuoteNumber],[AmountWithGst],[Gst],[AmountWithoutGst],[CurrentStatus],[CreatedDate],[ModifyDate],[PendingDate],[QuoteRequestedDate],[AwaitingApprovalDate],[WorkOrderSentDate],[CompletedDate],[HoldDate],[JobNotes],[InvoiceNumber],[MethodOfApproval],[ApprovalDate],[RejectedBy],[RejectionReason],[RejectedDate],[UserId]
FROM [CedarBackup].[dbo].[WorkOrders]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[WorkOrders] OFF
GO



SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Warranty] ON
GO
INSERT INTO [CedarSpaceDB].[dbo].[Warranty]([WarrantyItem],[WorkOrderNumber],[TraderLicense],[TraderName],[StartDate],[EndDate],[ClientId])
SELECT
[WarrantyItem],[WorkOrderNumber],[TraderLicense],[TraderName],[StartDate],[EndDate],[ClientId]
FROM
[CedarBackup].[dbo].[Warranty]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Warranty] OFF
GO


SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[UserControl] ON
GO

INSERT INTO [CedarSpaceDB].[dbo].[UserControl]
([ClientId],[UserId],[Username],[Password],[EmailAddress],[LoggedOn],[WorkStation],[ProcessID],[Salt],[Hash],[photoFileName])
SELECT
[ClientId],[UserId],[Username],[Password],[EmailAddress],[LoggedOn],[WorkStation],[ProcessID],[Salt],[Hash],[photoFileName]
FROM 
[CedarBackup].[dbo].[UserControl]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[UserControl] OFF
GO





SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[ToDoListItem] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[ToDoListItem]
([ClientId],[Description],[DateDue],[isFromCalendar],[Completed],[UserId],[DateCompleted])
SELECT
[ClientId],[Description],[DateDue],[isFromCalendar],[Completed],[UserId],[DateCompleted]
FROM 
[CedarBackup].[dbo].[ToDoListItem]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[ToDoListItem] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[TheBank] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[TheBank]
([ClientId],[BankNo],[BankTitle],[BankName],[Town],[BSB],[StrataNo],[BalanceCarriedForward],[Receipts],[Pays],[OnHand],[Active],[Cno],[Dno],[Unit],[StreetNo],[Status],[Street])
SELECT
[ClientId],[BankNo],[BankTitle],[BankName],[Town],[BSB],[StrataNo],[BalanceCarriedForward],[Receipts],[Pays],[OnHand],[Active],[Cno],[Dno],[Unit],[StreetNo],[Status],[Street]
FROM 
[CedarBackup].[dbo].[TheBank]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[TheBank] OFF
GO


SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[ReconBank] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[ReconBank]
([ClientId],[BankTitle],[BankName],[BankTown],[BSB],[StrataNumber],[BalanceCarriedForward],[Receipts],[Pays],[OnHand],[Active],[LastBalance])
SELECT 
[ClientId],[BankTitle],[BankName],[BankTown],[BSB],[StrataNumber],[BalanceCarriedForward],[Receipts],[Pays],[OnHand],[Active],[LastBalance]
FROM 
[CedarBackup].[dbo].[ReconBank]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[ReconBank] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[ReconAdjust] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[ReconAdjust]
([ClientId],[TransactionDate],[BankNo],[Cord],[Amount],[By],[Authorised],[What])
SELECT
[ClientId],[TransactionDate],[BankNo],[Cord],[Amount],[By],[Authorised],[What]
FROM 
[CedarBackup].[dbo].[ReconAdjust]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[ReconAdjust] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Recon] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[Recon]
([ClientId],[BankNo],[TransactionDate],[Debit],[Payee],[Acode],[Amount],[Tick],[PaymentMethod],[ReceiptNo],[ChequeNumber],[BankLevel],[Reconciled],[Cancel],[Reconlevel],[Spot],[EomPeriod])
SELECT
[ClientId],[BankNo],[TransactionDate],[Debit],[Payee],[Acode],[Amount],[Tick],[PaymentMethod],[ReceiptNo],[ChequeNumber],[BankLevel],[Reconciled],[Cancel],[Reconlevel],[Spot],[EomPeriod]
FROM 
[CedarBackup].[dbo].[Recon]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Recon] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Receipts] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[Receipts]
([ClientId],[Cash],[Cheque],[ChequeNo],[ChequeAccount],[DirectDebit],[Other],[TotalAmount],[PayBy],[IssuedFor])
SELECT
[ClientId],[Cash],[Cheque],[ChequeNo],[ChequeAccount],[DirectDebit],[Other],[TotalAmount],[PayBy],[IssuedFor]
FROM 
[CedarBackup].[dbo].[Receipts]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Receipts] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[ReceiptHold] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[ReceiptHold]
([ClientId],[AccountCode],[LandlordNo],[PropertyNo],[TenantNo],[Amount],[GST],[PaidFrom],[PaidTo],[Transactiondate],[ReceiptNo],[PaymentMethod],[Payee],[UserId],[InvoiceID],[ChequeNo],[Account])
SELECT
[ClientId],[AccountCode],[LandlordNo],[PropertyNo],[TenantNo],[Amount],[GST],[PaidFrom],[PaidTo],[Transactiondate],[ReceiptNo],[PaymentMethod],[Payee],[UserId],[InvoiceID],[ChequeNo],[Account]
FROM 
[CedarBackup].[dbo].[ReceiptHold]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[ReceiptHold] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[NewManagements] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[NewManagements]
([ClientId],[PropertyNo],[DateCreated],[Userid])
SELECT
[ClientId],[PropertyNo],[DateCreated],[Userid]
FROM 
[CedarBackup].[dbo].[NewManagements]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[NewManagements] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Ledger] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[Ledger]
([ClientId],[TransactionDate],[LandlordNo],[PropertyNo],[TenantNo],[CreditNo],[Debit],[Reference],[PaymentMethod],[ChequeNumber],[BSB],[AccountCode],[Amount],[Gst],[Fee],[FeeGst],[PaidFrom],[PaidTo],[BankLevel],[BankNo],[Cancel],[TntReceipt],[Payee],[Details],[AsEft],[bPayReference])
SELECT
[ClientId],[TransactionDate],[LandlordNo],[PropertyNo],[TenantNo],[CreditNo],[Debit],[Reference],[PaymentMethod],[ChequeNumber],[BSB],[AccountCode],[Amount],[Gst],[Fee],[FeeGst],[PaidFrom],[PaidTo],[BankLevel],[BankNo],[Cancel],[TntReceipt],[Payee],[Details],[AsEft],[bPayReference]
FROM 
[CedarBackup].[dbo].[Ledger]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Ledger] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[LedgerPast] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[LedgerPast]
([ClientId],[AuditNo],[TransactionDate],[LandlordNo],[PropertyNo],[TenantNo],[CreditNo],[Debit],[Reference],[PaymentMethod],[ChequeNumber],[BSB],[AccountCode],[Amount],[Gst],[Fee],[FeeGst],[PaidFrom],[PaidTo],[BankLevel],[BankNo],[Cancel],[TntReceipt],[Payee],[Details],[AsEft],[ThePeriod])
SELECT
[ClientId],[AuditNo],[TransactionDate],[LandlordNo],[PropertyNo],[TenantNo],[CreditNo],[Debit],[Reference],[PaymentMethod],[ChequeNumber],[BSB],[AccountCode],[Amount],[Gst],[Fee],[FeeGst],[PaidFrom],[PaidTo],[BankLevel],[BankNo],[Cancel],[TntReceipt],[Payee],[Details],[AsEft],[ThePeriod]
FROM 
[CedarBackup].[dbo].[LedgerPast]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[LedgerPast] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[LedgerCreditor] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[LedgerCreditor]
([ClientId],[TransactionDate],[DateDue],[LandlordNo],[PropertyNo],[CreditorNo],[InvoiceNumber],[PaymentMethod],[ChequeNumber],[BSB],[AccountCode],[Amount],[Gst],[AmountPaid],[GstPaid],[IsPaid],[LedgerNo],[IsCancel],[Period],[DatePaid],[AuditNo])
SELECT
[ClientId],[TransactionDate],[DateDue],[LandlordNo],[PropertyNo],[CreditorNo],[InvoiceNumber],[PaymentMethod],[ChequeNumber],[BSB],[AccountCode],[Amount],[Gst],[AmountPaid],[GstPaid],[IsPaid],[LedgerNo],[IsCancel],[Period],[DatePaid],[AuditNo]
FROM 
[CedarBackup].[dbo].[LedgerCreditor]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[LedgerCreditor] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Landlord] ON
GO

INSERT INTO [CedarSpaceDB].[dbo].[Landlord] 
([ClientId],[Lno],[Status],[LandlordName],[State],[PostCode],[ForwardBalance],[Receipts],[Disbursments],[Fees],[ChequeAction],[AdminFee],[Split],[Address],[LeaseCost],[LordLease],[FirstLettingFee],[SubsequentLettingFee],[BankAccount],[DateCommenced],[PaysGst],[ABN],[BankSpot],[ComOnRentOnly],[FeeRate],[MidMonthStatement],[Given],[Fax],[LandlordEmail],[Notes],[TownId])
SELECT 
[ClientId],[Lno],[Status],[LandlordName],[State],[PostCode],[ForwardBalance],[Receipts],[Disbursments],[Fees],[ChequeAction],[AdminFee],[Split],[Address],[LeaseCost],[LordLease],[FirstLettingFee],[SubsequentLettingFee],[BankAccount],[DateCommenced],[PaysGst],[ABN],[BankSpot],[ComOnRentOnly],[FeeRate],[MidMonthStatement],[Given],[Fax],[LandlordEmail],[Notes],[TownId]
FROM [CedarBackup].[dbo].[Landlord]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Landlord] OFF
GO


SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[LandlordContact] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[LandlordContact]
([ClientId],[Lno],[Email],[EomSent],[DateSent],[ContactName],[HomePhone],[WorkPhone],[MobilePhone],[Fax],[IsMainContact],[SplitNo],[UserId])
SELECT
[ClientId],[Lno],[Email],[EomSent],[DateSent],[ContactName],[HomePhone],[WorkPhone],[MobilePhone],[Fax],[IsMainContact],[SplitNo],[UserId]
FROM 
[CedarBackup].[dbo].[LandlordContact]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[LandlordContact] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[LandlordSplit] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[LandlordSplit]
([ClientId],[LandlordNumber],[PropertyNumber],[Name],[Address],[TownId],[BankAccount],[Ratio],[ChequeAction])
SELECT
[ClientId],[LandlordNumber],[PropertyNumber],[Name],[Address],[TownId],[BankAccount],[Ratio],[ChequeAction]
FROM 
[CedarBackup].[dbo].[LandlordSplit]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[LandlordSplit] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[LandlordLedger] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[LandlordLedger]
([TheOrder],[AuditNo],[Tdate],[TtPayee],[Acode],[Ref],[PaidFrom],[PaidTo],[Amount],[HowPay],[RunTotal],[Cord],[Details],[Lno],[SplitNo],[AmountGst],[Fee],[FeeGst],[ClientId])
SELECT
[TheOrder],[AuditNo],[Tdate],[TtPayee],[Acode],[Ref],[PaidFrom],[PaidTo],[Amount],[HowPay],[RunTotal],[Cord],[Details],[Lno],[SplitNo],[AmountGst],[Fee],[FeeGst],[ClientId]
FROM 
[CedarBackup].[dbo].[LandlordLedger]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[LandlordLedger] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[LandlordHistory] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[LandlordHistory]
([AutoRecord],[Lno],[Ldelete],[Lname],[Laddress1],[Laddress2],[State],[PostCode],[Sortkey],[PhoneH],[PhoneW],[PhoneM],[FeeRate],[Lchequeaction],[LStamps],[Memo],[LongName],[Split],[PostAddress],[LeaseCost],[LordLease],[LeaseFee1],[LeaseFee3],[BankAccount],[DateCommenced],[PaysGst],[PaysFees],[ABN],[BankSpot],[ComOnRentOnly],[ChangeDate],[GIVEN],[SURNAME],[PHONEF],[UNIT],[STREETNO],[STREET],[ClientId])
SELECT
[AutoRecord],[Lno],[Ldelete],[Lname],[Laddress1],[Laddress2],[State],[PostCode],[Sortkey],[PhoneH],[PhoneW],[PhoneM],[FeeRate],[Lchequeaction],[LStamps],[Memo],[LongName],[Split],[PostAddress],[LeaseCost],[LordLease],[LeaseFee1],[LeaseFee3],[BankAccount],[DateCommenced],[PaysGst],[PaysFees],[ABN],[BankSpot],[ComOnRentOnly],[ChangeDate],[GIVEN],[SURNAME],[PHONEF],[UNIT],[STREETNO],[STREET],[ClientId]
FROM 
[CedarBackup].[dbo].[LandlordHistory]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[LandlordHistory] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[LandlordFiles] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[LandlordFiles]
([LandlordNo],[FileName],[ClientId])
SELECT
[LandlordNo],[FileName],[ClientId]
FROM 
[CedarBackup].[dbo].[LandlordFiles]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[LandlordFiles] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[LandlordEmailHistory] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[LandlordEmailHistory]
([ClientId],[Lno],[EDate],[ETime],[Esubject],[Emessage],[PorE],[EmailAdd],[MobPhone],[Esuccess],[ErrMsg],[Attachments])
SELECT
[ClientId],[Lno],[EDate],[ETime],[Esubject],[Emessage],[PorE],[EmailAdd],[MobPhone],[Esuccess],[ErrMsg],[Attachments]
FROM 
[CedarBackup].[dbo].[LandlordEmailHistory]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[LandlordEmailHistory] OFF
GO



SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[LandlordBalance] ON
GO



INSERT INTO [CedarSpaceDB].[dbo].[LandlordBalance]
([ClientID],[LandlordNo],[BalanceForward],[Receipts],[ReceiptsGST],[Disbursments],[DisbursmentsGST],[SubTotal],[Fees],[FeeGST],[AdminFee],[OnHand])
SELECT
[ClientID],[LandlordNo],[BalanceForward],[Receipts],[ReceiptsGST],[Disbursments],[DisbursmentsGST],[SubTotal],[Fees],[FeeGST],[AdminFee],[OnHand]
FROM 
[CedarBackup].[dbo].[LandlordBalance]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[LandlordBalance] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Property] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[Property]
([ClientId],[LandlordNo],[Flag],[Address],[State],[PostCode],[LeaseCost],[AgentFee],[FirstLettingFee],[SubsequentLettingFee],[LeaseCount],[WebHeading],[WebDescription],[WebHideAddress],[BuildingArea],[LandArea],[Advertise],[AdvertiseDate],[AdvertiseContact],[StyleId],[Status],[TownId],[PropertyValue],[ManagerName],[ManagerComments],[ReferalName],[ReferalFee],[AuthorityDate],[DeletionDate])
SELECT
[ClientId],[LandlordNo],[Flag],[Address],[State],[PostCode],[LeaseCost],[AgentFee],[FirstLettingFee],[SubsequentLettingFee],[LeaseCount],[WebHeading],[WebDescription],[WebHideAddress],[BuildingArea],[LandArea],[Advertise],[AdvertiseDate],[AdvertiseContact],[StyleId],[Status],[TownId],[PropertyValue],[ManagerName],[ManagerComments],[ReferalName],[ReferalFee],[AuthorityDate],[DeletionDate]
FROM 
[CedarBackup].[dbo].[Property]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Property] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Tenant] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[Tenant]
([ClientId],[PropertyNo],[TenantStatus],[TenantName],[Rent],[RentalPeriod],[DatePaidTo],[LeaseStartDate],[LeaseExpiryDate],[InspectionDate],[InspectionTime],[VacateDate],[LeftDate],[PhoneHome],[PhoneWork],[PhoneMobile],[BondValue],[BondPeriods],[BondStatus],[BondNumber],[RentChangeDate],[NewRent],[TenantReference],[Credit],[PaysGst],[LastPaid],[StartDate],[Given],[Surname],[RentWas],[ChangeRent],[InspectChecked],[InspectionNotified],[AnnualReviewDate],[ReviewMethod],[MarkReviewDate],[TenancyOption],[OptionTerm],[OptionNotice],[LastDayForOption],[FitOutPeriod],[RentCommencementDate],[AnnualRent],[BankGuaranteeHeldAt],[ABN],[ReviewAmount],[NewLeaseRenewalNotice],[EndOfLeaseNotice],[LeaseTerm],[TenantSalute],[Title])
SELECT
[ClientId],[PropertyNo],[TenantStatus],[TenantName],[Rent],[RentalPeriod],[DatePaidTo],[LeaseStartDate],[LeaseExpiryDate],[InspectionDate],[InspectionTime],[VacateDate],[LeftDate],[PhoneHome],[PhoneWork],[PhoneMobile],[BondValue],[BondPeriods],[BondStatus],[BondNumber],[RentChangeDate],[NewRent],[TenantReference],[Credit],[PaysGst],[LastPaid],[StartDate],[Given],[Surname],[RentWas],[ChangeRent],[InspectChecked],[InspectionNotified],[AnnualReviewDate],[ReviewMethod],[MarkReviewDate],[TenancyOption],[OptionTerm],[OptionNotice],[LastDayForOption],[FitOutPeriod],[RentCommencementDate],[AnnualRent],[BankGuaranteeHeldAt],[ABN],[ReviewAmount],[NewLeaseRenewalNotice],[EndOfLeaseNotice],[LeaseTerm],[TenantSalute],[Title]
FROM 
[CedarBackup].[dbo].[Tenant]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Tenant] OFF
GO



SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[TenantWater] ON
GO



INSERT INTO [CedarSpaceDB].[dbo].[TenantWater]
([ClientId],[TenantNo],[TransactionDate],[Amount],[Paid],[DatePaid],[Ref])
SELECT
[ClientId],[TenantNo],[TransactionDate],[Amount],[Paid],[DatePaid],[Ref]
FROM 
[CedarBackup].[dbo].[TenantWater]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[TenantWater] OFF
GO



SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[TenantMessage] ON
GO



INSERT INTO [CedarSpaceDB].[dbo].[TenantMessage]
([Tno],[Memo],[Purge],[Mno],[ClientId])
SELECT
[Tno],[Memo],[Purge],[Mno],[ClientId]
FROM 
[CedarBackup].[dbo].[TenantMessage]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[TenantMessage] OFF
GO



SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[TenantInvoice] ON
GO



INSERT INTO [CedarSpaceDB].[dbo].[TenantInvoice]
([ClientId],[TenantNo],[DateCreated],[AccountCode],[Description],[Amount],[GST],[Paid],[DatePaid],[DateDue],[AmountPaid])
SELECT
[ClientId],[TenantNo],[DateCreated],[AccountCode],[Description],[Amount],[GST],[Paid],[DatePaid],[DateDue],[AmountPaid]
FROM 
[CedarBackup].[dbo].[TenantInvoice]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[TenantInvoice] OFF
GO







SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[TenantHistory] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[TenantHistory]
([ClientId],[TenantNo],[TransactionDate],[Details],[PaidTo],[PaidFrom],[Amount],[Credit],[Reference],[PaymentMethod])
SELECT
[ClientId],[TenantNo],[TransactionDate],[Details],[PaidTo],[PaidFrom],[Amount],[Credit],[Reference],[PaymentMethod]
FROM 
[CedarBackup].[dbo].[TenantHistory]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[TenantHistory] OFF
GO







SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[TenantFiles] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[TenantFiles]
([TenantNo],[FileName],[ClientId])
SELECT
[TenantNo],[FileName],[ClientId]
FROM 
[CedarBackup].[dbo].[TenantFiles]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[TenantFiles] OFF
GO







SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[TenantEmailHistory] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[TenantEmailHistory]
([ClientId],[TenantNumber],[Date],[Time],[Subject],[Message],[Address],[MobilePhone],[Success],[Error],[WhichLetter],[Attachments],[FileSavedTo])
SELECT
[ClientId],[TenantNumber],[Date],[Time],[Subject],[Message],[Address],[MobilePhone],[Success],[Error],[WhichLetter],[Attachments],[FileSavedTo]
FROM 
[CedarBackup].[dbo].[TenantEmailHistory]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[TenantEmailHistory] OFF
GO







SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[TenantContact] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[TenantContact]
([ClientId],[TenantNo],[Email],[ContactName],[HomePhone],[WorkPhone],[MobilePhone],[Fax],[MainContact])
SELECT
[ClientId],[TenantNo],[Email],[ContactName],[HomePhone],[WorkPhone],[MobilePhone],[Fax],[MainContact]
FROM 
[CedarBackup].[dbo].[TenantContact]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[TenantContact] OFF
GO







SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[PropertyResidential] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[PropertyResidential]
([ClientId],[Pno],[HeatType],[HotWaterType],[FirePlace],[AirConditioning],[Parking],[Pool],[Spa],[TennisCourt],[Laundry],[Vacuum],[Alarm],[Intercom],[BuildingSecurity],[Balcony],[Furnished],[PetsAllowed],[CityView],[WaterView],[DistrictView],[CloseToBeach],[CloseToShop],[CloseToTrains],[BuiltInWardrobes],[CableOrSatelite],[Floorboards],[GroundFloor],[Northfacing],[BroadbandAccess],[Bath],[SeperateDiningRoom],[Dishwasher],[Study],[Shed],[FullyFenced],[GardenOrCourtyard],[DoubleGlazedWindows],[EnergyEfficientAppliances],[WaterEfficientAppliances],[WaterCeilingInsulation],[RainwaterSystem],[GreywaterSystem],[WaterEfficientFixtures],[SolarPanels],[CustomFeatures],[Ensuite])
SELECT
[ClientId],[Pno],[HeatType],[HotWaterType],[FirePlace],[AirConditioning],[Parking],[Pool],[Spa],[TennisCourt],[Laundry],[Vacuum],[Alarm],[Intercom],[BuildingSecurity],[Balcony],[Furnished],[PetsAllowed],[CityView],[WaterView],[DistrictView],[CloseToBeach],[CloseToShop],[CloseToTrains],[BuiltInWardrobes],[CableOrSatelite],[Floorboards],[GroundFloor],[Northfacing],[BroadbandAccess],[Bath],[SeperateDiningRoom],[Dishwasher],[Study],[Shed],[FullyFenced],[GardenOrCourtyard],[DoubleGlazedWindows],[EnergyEfficientAppliances],[WaterEfficientAppliances],[WaterCeilingInsulation],[RainwaterSystem],[GreywaterSystem],[WaterEfficientFixtures],[SolarPanels],[CustomFeatures],[Ensuite]
FROM 
[CedarBackup].[dbo].[PropertyResidential]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[PropertyResidential] OFF
GO







SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[PropertyPhotos] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[PropertyPhotos]
([ClientId],[Pno],[Filename],[MainPhoto],[FloorPlan],[Caption])
SELECT
[ClientId],[Pno],[Filename],[MainPhoto],[FloorPlan],[Caption]
FROM 
[CedarBackup].[dbo].[PropertyPhotos]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[PropertyPhotos] OFF
GO







SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[PropertyFiles] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[PropertyFiles]
([PropertyNo],[FileName],[ClientId])
SELECT
[PropertyNo],[FileName],[ClientId]
FROM 
[CedarBackup].[dbo].[PropertyFiles]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[PropertyFiles] OFF
GO






SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[PropertyDetails] ON
GO



INSERT INTO [CedarSpaceDB].[dbo].[PropertyDetails]
([ClientId],[PropertyNo],[PropertyNotes],[PropertyDescription],[CarSpot],[Bedrooms],[Bathrooms],[Parking],[StrataPlanNo],[StrataManager],[StrataContactName],[StrataWorkPhone],[StrataMobilePhone],[StrataFaxNo],[StrataEmail],[InsPolicyNo],[InsDesc],[InsContactName],[InsStartDate],[InsEndDate],[SmokeAlarmPower],[SmokeAlarmPersonResponsible],[SmokeAlarmDateChecked],[PoolDateChecked],[PoolComplianceReference])
SELECT
[ClientId],[PropertyNo],[PropertyNotes],[PropertyDescription],[CarSpot],[Bedrooms],[Bathrooms],[Parking],[StrataPlanNo],[StrataManager],[StrataContactName],[StrataWorkPhone],[StrataMobilePhone],[StrataFaxNo],[StrataEmail],[InsPolicyNo],[InsDesc],[InsContactName],[InsStartDate],[InsEndDate],[SmokeAlarmPower],[SmokeAlarmPersonResponsible],[SmokeAlarmDateChecked],[PoolDateChecked],[PoolComplianceReference]
FROM 
[CedarBackup].[dbo].[PropertyDetails]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[PropertyDetails] OFF
GO






SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[PropertyBillEntity] ON
GO



INSERT INTO [CedarSpaceDB].[dbo].[PropertyBillEntity]
([ClientId],[Pno],[BeNo],[Lno],[PCent],[Adr],[Entity],[Town],[BillNo])
SELECT
[ClientId],[Pno],[BeNo],[Lno],[PCent],[Adr],[Entity],[Town],[BillNo]
FROM 
[CedarBackup].[dbo].[PropertyBillEntity]
WHERE ClientId = @ClientId 


SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[PropertyBillEntity] OFF
GO






SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[PortalLinks] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[PortalLinks]
([ClientId],[PortalLink],[PortalEmail],[PortalPhone],[LinkEndTime],[LandlordNo],[TenantNo],[LinkCode],[EmailSendTime])
SELECT
[ClientId],[PortalLink],[PortalEmail],[PortalPhone],[LinkEndTime],[LandlordNo],[TenantNo],[LinkCode],[EmailSendTime]
FROM 
[CedarBackup].[dbo].[PortalLinks]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[PortalLinks] OFF
GO







SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[OpenDates] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[OpenDates]
([ClientId],[PropertyNo],[StartDate],[StartTime],[EndTime])
SELECT
[ClientId],[PropertyNo],[StartDate],[StartTime],[EndTime]
FROM 
[CedarBackup].[dbo].[OpenDates]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[OpenDates] OFF
GO







SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[OgTaxInvoiceTable] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[OgTaxInvoiceTable]
([ClientId],[Idx],[FinYear],[TotalDue],[Amount],[Gst],[SubTotal],[Total],[Rent],[SubRent],[RentGst],[ACode],[DummyACode],[MonthNo],[Fees])
SELECT
[ClientId],[Idx],[FinYear],[TotalDue],[Amount],[Gst],[SubTotal],[Total],[Rent],[SubRent],[RentGst],[ACode],[DummyACode],[MonthNo],[Fees]
FROM 
[CedarBackup].[dbo].[OgTaxInvoiceTable]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[OgTaxInvoiceTable] OFF
GO







SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[OgProperty] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[OgProperty]
([ClientId],[PropertyNo],[BuildingNo],[Flagged],[BuildingSize],[BudgetPercentage],[Parking],[Toilets],[AirConditioning],[PartitionedOffices],[ReceptionArea],[NumberOfLifts],[VisitorsParking],[AccessRestrictions],[RestrictionTime],[CableSatelite],[Broadbandaccess],[BuildingSecurity],[Alarm],[Intercom],[GroundFloor],[CityViews],[WaterViews],[NorthFacing],[EnergyEfficientAppliances],[WaterEfficientFixtures],[WaterOrCeilingInsulation],[RainwaterTank],[GreywaterSystem],[DoubleGlazedWindows],[SolarPanels],[Sdate],[EDate],[Rdate],[Method],[ORate],[BudgetCalcMethod],[WaterEfficientAppliances],[NabersRating],[IsStandaloneProperty],[CoolingTowers],[CoolingTowersPerson],[CoolingTowersDateChecked],[CoolingTowersResult],[Sprinkler],[SprinklerPerson],[SprinklerCheckedDate],[SprinklerResult],[FireHose],[FireHosePerson],[FireHoseCheckedDate],[FireHoseResult],[Blanket],[BlanketPerson],[BlanketCheckedDate],[BlanketResult],[ComFeeByMonth],[ComFeeByPercent],[AgComRate])
SELECT
[ClientId],[PropertyNo],[BuildingNo],[Flagged],[BuildingSize],[BudgetPercentage],[Parking],[Toilets],[AirConditioning],[PartitionedOffices],[ReceptionArea],[NumberOfLifts],[VisitorsParking],[AccessRestrictions],[RestrictionTime],[CableSatelite],[Broadbandaccess],[BuildingSecurity],[Alarm],[Intercom],[GroundFloor],[CityViews],[WaterViews],[NorthFacing],[EnergyEfficientAppliances],[WaterEfficientFixtures],[WaterOrCeilingInsulation],[RainwaterTank],[GreywaterSystem],[DoubleGlazedWindows],[SolarPanels],[Sdate],[EDate],[Rdate],[Method],[ORate],[BudgetCalcMethod],[WaterEfficientAppliances],[NabersRating],[IsStandaloneProperty],[CoolingTowers],[CoolingTowersPerson],[CoolingTowersDateChecked],[CoolingTowersResult],[Sprinkler],[SprinklerPerson],[SprinklerCheckedDate],[SprinklerResult],[FireHose],[FireHosePerson],[FireHoseCheckedDate],[FireHoseResult],[Blanket],[BlanketPerson],[BlanketCheckedDate],[BlanketResult],[ComFeeByMonth],[ComFeeByPercent],[AgComRate]
FROM 
[CedarBackup].[dbo].[OgProperty]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[OgProperty] OFF
GO






SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[OgPropertyBudget] ON
GO



INSERT INTO [CedarSpaceDB].[dbo].[OgPropertyBudget]
([ClientId],[AccountCode],[PropertyNo],[FinancialYear],[Amount])
SELECT
[ClientId],[AccountCode],[PropertyNo],[FinancialYear],[Amount]
FROM 
[CedarBackup].[dbo].[OgPropertyBudget]
WHERE ClientId = @ClientId 


SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[OgPropertyBudget] OFF
GO





SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[OgGroup] ON
GO



INSERT INTO [CedarSpaceDB].[dbo].[OgGroup]
([ClientId],[GroupId],[GroupName],[GroupDescription])
SELECT
[ClientId],[GroupId],[GroupName],[GroupDescription]
FROM 
[CedarBackup].[dbo].[OgGroup]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[OgGroup] OFF
GO







SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[AccountCodes] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[AccountCodes]
([ClientId],[AccountCode],[Description],[UserCantUse],[Standard],[ExemptGst],[ExemptFee],[OutGoings],[GroupId])
SELECT
[ClientId],[AccountCode],[Description],[UserCantUse],[Standard],[ExemptGst],[ExemptFee],[OutGoings],[GroupId]
FROM 
[CedarBackup].[dbo].[AccountCodes]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[AccountCodes] OFF
GO







SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[OgTenantBudget] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[OgTenantBudget]
([ClientId],[AccountCode],[FinYear],[PropertyNo],[TenantNo],[JUL],[JULPaid],[AUG],[AUGPaid],[SEP],[SEPPaid],[OCT],[OCTPaid],[NOV],[NOVPaid],[DEC],[DECPaid],[JAN],[JANPaid],[FEB],[FEBPaid],[MAR],[MARPaid],[APR],[APRPaid],[MAY],[MAYPaid],[JUN],[JUNPaid])
SELECT
[ClientId],[AccountCode],[FinYear],[PropertyNo],[TenantNo],[JUL],[JULPaid],[AUG],[AUGPaid],[SEP],[SEPPaid],[OCT],[OCTPaid],[NOV],[NOVPaid],[DEC],[DECPaid],[JAN],[JANPaid],[FEB],[FEBPaid],[MAR],[MARPaid],[APR],[APRPaid],[MAY],[MAYPaid],[JUN],[JUNPaid]
FROM 
[CedarBackup].[dbo].[OgTenantBudget]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[OgTenantBudget] OFF
GO







SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[OgBuilding] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[OgBuilding]
([ClientId],[LandlordNo],[Address],[State],[PostCode],[Flag],[GrossArea],[BuildingName],[NetLetableArea],[TownId])
SELECT
[ClientId],[LandlordNo],[Address],[State],[PostCode],[Flag],[GrossArea],[BuildingName],[NetLetableArea],[TownId]
FROM 
[CedarBackup].[dbo].[OgBuilding]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[OgBuilding] OFF
GO







SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[OgBudget] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[OgBudget]
([ClientId],[Acode],[BuildingNo],[FinYear],[Amount])
SELECT
[ClientId],[Acode],[BuildingNo],[FinYear],[Amount]
FROM 
[CedarBackup].[dbo].[OgBudget]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[OgBudget] OFF
GO







SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Keys] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[Keys]
([ClientId],[PropertyNo],[TenantNo],[KeyNo],[KeySerial],[NumberofKeys],[Description],[Authority],[Locksmith],[PhoneNumber],[NumberOfSecurityKeys],[FOBSerialNumber],[NumberOfFOBKeys])
SELECT
[ClientId],[PropertyNo],[TenantNo],[KeyNo],[KeySerial],[NumberofKeys],[Description],[Authority],[Locksmith],[PhoneNumber],[NumberOfSecurityKeys],[FOBSerialNumber],[NumberOfFOBKeys]
FROM 
[CedarBackup].[dbo].[Keys]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Keys] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Insurance] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[Insurance]
([Provider],[Number],[LiabilityCover],[GlassCover],[StartDate],[EndDate],[TenantNo],[PropertyNo],[ClientId])
SELECT
[Provider],[Number],[LiabilityCover],[GlassCover],[StartDate],[EndDate],[TenantNo],[PropertyNo],[ClientId]
FROM 
[CedarBackup].[dbo].[Insurance]
WHERE ClientId = @ClientId 


SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Insurance] OFF
GO



SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[HoldingDeposit] ON
GO



INSERT INTO [CedarSpaceDB].[dbo].[HoldingDeposit]
([ClientId],[PropertyNo],[TenantName],[HoldAmount],[Ref],[TransactionDate],[PaymentMethod],[Purge])
SELECT
[ClientId],[PropertyNo],[TenantName],[HoldAmount],[Ref],[TransactionDate],[PaymentMethod],[Purge]
FROM 
[CedarBackup].[dbo].[HoldingDeposit]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[HoldingDeposit] OFF
GO





SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Files] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[Files]
([ClientId],[FileName],[FileDisplayName],[FileFullName],[FileExtention],[FilePath],[UserId],[CreateDate],[FileTypeId],[Type])
SELECT
[ClientId],[FileName],[FileDisplayName],[FileFullName],[FileExtention],[FilePath],[UserId],[CreateDate],[FileTypeId],[Type]
FROM 
[CedarBackup].[dbo].[Files]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Files] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[EOMTheBank] ON
GO



INSERT INTO [CedarSpaceDB].[dbo].[EOMTheBank]
([BankNo],[ClientId],[ThePeriod],[BankTitle],[BankName],[Town],[BSB],[StrataNo],[BalanceCarriedForward],[Receipts],[Pays],[OnHand],[Active],[Cno],[Dno],[Unit],[StreetNo],[Status],[Street])
SELECT
[BankNo],[ClientId],[ThePeriod],[BankTitle],[BankName],[Town],[BSB],[StrataNo],[BalanceCarriedForward],[Receipts],[Pays],[OnHand],[Active],[Cno],[Dno],[Unit],[StreetNo],[Status],[Street]
FROM 
[CedarBackup].[dbo].[EOMTheBank]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[EOMTheBank] OFF
GO





SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[EOMRecon] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[EOMRecon]
([ClientId],[ThePeriod],[BankNo],[TransactionDate],[Debit],[Payee],[Acode],[Amount],[Tick],[PaymentMethod],[ReceiptNo],[ChequeNumber],[BankLevel],[Reconciled],[Cancel],[Reconlevel],[Spot])
SELECT
[ClientId],[ThePeriod],[BankNo],[TransactionDate],[Debit],[Payee],[Acode],[Amount],[Tick],[PaymentMethod],[ReceiptNo],[ChequeNumber],[BankLevel],[Reconciled],[Cancel],[Reconlevel],[Spot]
FROM 
[CedarBackup].[dbo].[EOMRecon]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[EOMRecon] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[EOMReconBank] ON
GO



INSERT INTO [CedarSpaceDB].[dbo].[EOMReconBank]
([BankNumber],[ClientId],[ThePeriod],[BankTitle],[BankName],[BankTown],[BSB],[StrataNumber],[BalanceCarriedForward],[Receipts],[Pays],[OnHand],[Active],[LastBalance])
SELECT
[BankNumber],[ClientId],[ThePeriod],[BankTitle],[BankName],[BankTown],[BSB],[StrataNumber],[BalanceCarriedForward],[Receipts],[Pays],[OnHand],[Active],[LastBalance]
FROM 
[CedarBackup].[dbo].[EOMReconBank]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[EOMReconBank] OFF
GO





SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[EOMLordBalance] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[EOMLordBalance]
([ClientID],[LandlordNo],[Period],[BalanceForward],[Receipts],[ReceiptsGST],[Disbursments],[DisbursmentsGST],[SubTotal],[Fees],[FeeGST],[AdminFee],[OnHand])
SELECT
[ClientID],[LandlordNo],[Period],[BalanceForward],[Receipts],[ReceiptsGST],[Disbursments],[DisbursmentsGST],[SubTotal],[Fees],[FeeGST],[AdminFee],[OnHand]
FROM 
[CedarBackup].[dbo].[EOMLordBalance]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[EOMLordBalance] OFF
GO





SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[EmailTemplates] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[EmailTemplates]
([ClientId],[Description],[EmailTemplate],[StandardTemplate],[DateCreated],[LastModified])
SELECT
[ClientId],[Description],[EmailTemplate],[StandardTemplate],[DateCreated],[LastModified]
FROM 
[CedarBackup].[dbo].[EmailTemplates]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[EmailTemplates] OFF
GO





SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[EftUsedBsb] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[EftUsedBsb]
([Bsb],[ClientId])
SELECT
[Bsb],[ClientId]
FROM 
[CedarBackup].[dbo].[EftUsedBsb]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[EftUsedBsb] OFF
GO





SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[EftTransactions] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[EftTransactions]
([ClientId],[Bsb],[Account],[Amount],[TotalAmount],[Payee],[Details],[IsSent],[AuditNo],[LandlordNo],[SendNumber])
SELECT
[ClientId],[Bsb],[Account],[Amount],[TotalAmount],[Payee],[Details],[IsSent],[AuditNo],[LandlordNo],[SendNumber]
FROM 
[CedarBackup].[dbo].[EftTransactions]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[EftTransactions] OFF
GO





SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[EftTransactionFiles] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[EftTransactionFiles]
([ClientId],[SendNumber],[FileName])
SELECT
[ClientId],[SendNumber],[FileName]
FROM 
[CedarBackup].[dbo].[EftTransactionFiles]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[EftTransactionFiles] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Creditor] ON
GO



INSERT INTO [CedarSpaceDB].[dbo].[Creditor]
([ClientId],[Flag],[CreditorName],[Address],[State],[PostCode],[TownId],[Balance],[Receipts],[Pays],[BankAccount],[DateCommenced],[PaysGst],[ABN],[BankSpot],[UseEft],[SFlag],[BillPay])
SELECT
[ClientId],[Flag],[CreditorName],[Address],[State],[PostCode],[TownId],[Balance],[Receipts],[Pays],[BankAccount],[DateCommenced],[PaysGst],[ABN],[BankSpot],[UseEft],[SFlag],[BillPay]
FROM 
[CedarBackup].[dbo].[Creditor]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Creditor] OFF
GO





SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[CreditorContact] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[CreditorContact]
([ClientId],[CreditorNo],[Email],[ContactName],[HomePhone],[WorkPhone],[MobilePhone],[Fax])
SELECT
[ClientId],[CreditorNo],[Email],[ContactName],[HomePhone],[WorkPhone],[MobilePhone],[Fax]
FROM 
[CedarBackup].[dbo].[CreditorContact]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[CreditorContact] OFF
GO





SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[ClientNetWork] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[ClientNetWork]
([ClientID],[ClientName],[IPAddress],[IPHostName],[NetWorkName],[NetWorkUserID],[NetWorkPswd],[SMSAPI],[SMSUserID],[SMSUserPswd],[SMSAPIPswd],[SMSClientID],[SMSWeb],[ClientEmailType])
SELECT
[ClientID],[ClientName],[IPAddress],[IPHostName],[NetWorkName],[NetWorkUserID],[NetWorkPswd],[SMSAPI],[SMSUserID],[SMSUserPswd],[SMSAPIPswd],[SMSClientID],[SMSWeb],[ClientEmailType]
FROM 
[CedarBackup].[dbo].[ClientNetWork]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[ClientNetWork] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[NextNumber] ON
GO



INSERT INTO [CedarSpaceDB].[dbo].[NextNumber]
([ClientId],[RecNo],[ChqNo],[Jnlno],[CreditNo],[BankLevel],[ReceiptNo])
SELECT
[ClientId],[RecNo],[ChqNo],[Jnlno],[CreditNo],[BankLevel],[ReceiptNo]
FROM 
[CedarBackup].[dbo].[NextNumber]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[NextNumber] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[CheckBalance] ON
GO



INSERT INTO [CedarSpaceDB].[dbo].[CheckBalance]
([Spot],[Pline],[Pline2],[Pline3],[Pline4],[ClientId])
SELECT
[Spot],[Pline],[Pline2],[Pline3],[Pline4],[ClientId]
FROM 
[CedarBackup].[dbo].[CheckBalance]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[CheckBalance] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Charges] ON
GO



INSERT INTO [CedarSpaceDB].[dbo].[Charges]
([ClientId],[AccountCode],[Amount],[PropertyType],[TenantId])
SELECT
[ClientId],[AccountCode],[Amount],[PropertyType],[TenantId]
FROM 
[CedarBackup].[dbo].[Charges]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Charges] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[CalendarItem] ON
GO



INSERT INTO [CedarSpaceDB].[dbo].[CalendarItem]
([Clientid],[Title],[StartDate],[EndDate],[IsFullDayEvent],[LinkUrl],[UserId],[SentToTodoList],[WorkOrderID])
SELECT
[Clientid],[Title],[StartDate],[EndDate],[IsFullDayEvent],[LinkUrl],[UserId],[SentToTodoList],[WorkOrderID]
FROM 
[CedarBackup].[dbo].[CalendarItem]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[CalendarItem] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[BondHistory] ON
GO



INSERT INTO [CedarSpaceDB].[dbo].[BondHistory]
([Tno],[Bdate],[Bno],[BondValue],[BondNumber],[Action],[ClientId])
SELECT
[Tno],[Bdate],[Bno],[BondValue],[BondNumber],[Action],[ClientId]
FROM 
[CedarBackup].[dbo].[BondHistory]
WHERE ClientId = @ClientId 


SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[BondHistory] OFF
GO



SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[BondBoard] ON
GO



INSERT INTO [CedarSpaceDB].[dbo].[BondBoard]
([ClientId],[BondAuthority],[BondAdress],[BondPostCode],[BondState],[BondBank],[BondBsb],[BondEmail])
SELECT
[ClientId],[BondAuthority],[BondAdress],[BondPostCode],[BondState],[BondBank],[BondBsb],[BondEmail]
FROM 
[CedarBackup].[dbo].[BondBoard]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[BondBoard] OFF
GO





SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Bills] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[Bills]
([BillID],[BillNumber],[Lno],[Landlord],[Cno],[Creditor],[Pno],[Bno],[ChequeNumber],[BSB],[PayHow],[Amount],[AcodeDescription],[AcodeNumber],[Ref],[DateCreated],[Description],[Paid],[ClientId])
SELECT
[BillID],[BillNumber],[Lno],[Landlord],[Cno],[Creditor],[Pno],[Bno],[ChequeNumber],[BSB],[PayHow],[Amount],[AcodeDescription],[AcodeNumber],[Ref],[DateCreated],[Description],[Paid],[ClientId]
FROM 
[CedarBackup].[dbo].[Bills]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Bills] OFF
GO





SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[BillPayTransaction] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[BillPayTransaction]
([ClientId],[TransactionID],[BillPay],[Amount],[AuditNumber],[LandlordNumber],[BpayReference],[BPayFile],[IsSent])
SELECT
[ClientId],[TransactionID],[BillPay],[Amount],[AuditNumber],[LandlordNumber],[BpayReference],[BPayFile],[IsSent]
FROM 
[CedarBackup].[dbo].[BillPayTransaction]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[BillPayTransaction] OFF
GO





SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[BillFileTable] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[BillFileTable]
([ClientId],[FileName],[FilePath],[DisplayName],[UserId])
SELECT
[ClientId],[FileName],[FilePath],[DisplayName],[UserId]
FROM 
[CedarBackup].[dbo].[BillFileTable]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[BillFileTable] OFF
GO





SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[BillEntity] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[BillEntity]
([BillNo],[LandlordNo],[Entity],[TownId],[Address],[ClientId])
SELECT
[BillNo],[LandlordNo],[Entity],[TownId],[Address],[ClientId]
FROM 
[CedarBackup].[dbo].[BillEntity]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[BillEntity] OFF
GO





SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[BarcodeDetails] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[BarcodeDetails]
([ClientId],[CompanyID],[ReferenceLength],[AmountLength],[Description],[AmountStart],[ReferenceStart],[Discount])
SELECT
[ClientId],[CompanyID],[ReferenceLength],[AmountLength],[Description],[AmountStart],[ReferenceStart],[Discount]
FROM 
[CedarBackup].[dbo].[BarcodeDetails]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[BarcodeDetails] OFF
GO





SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Barcode] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[Barcode]
([ClientId],[CreditorNumber],[PropertyNumber],[LandlordNumber],[BarcodeString],[Reference],[AccountCode],[Amount],[DateLastPaid])
SELECT
[ClientId],[CreditorNumber],[PropertyNumber],[LandlordNumber],[BarcodeString],[Reference],[AccountCode],[Amount],[DateLastPaid]
FROM 
[CedarBackup].[dbo].[Barcode]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Barcode] OFF
GO





SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[BankTransaction] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[BankTransaction]
([Tdate],[Ref],[Acode],[Cash],[Cheque],[Eft],[Other],[ClientId])
SELECT
[Tdate],[Ref],[Acode],[Cash],[Cheque],[Eft],[Other],[ClientId]
FROM 
[CedarBackup].[dbo].[BankTransaction]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[BankTransaction] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[BankIncomeCheque] ON
GO



INSERT INTO [CedarSpaceDB].[dbo].[BankIncomeCheque]
([Drawer],[ChqNo],[BSB],[Amount],[Tdate],[BankNo],[ClientId])
SELECT
[Drawer],[ChqNo],[BSB],[Amount],[Tdate],[BankNo],[ClientId]
FROM 
[CedarBackup].[dbo].[BankIncomeCheque]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[BankIncomeCheque] OFF
GO





SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[AspNetUsers] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[AspNetUsers]
([Id],[Email],[EmailConfirmed],[PasswordHash],[SecurityStamp],[PhoneNumber],[PhoneNumberConfirmed],[TwoFactorEnabled],[LockoutEndDateUtc],[LockoutEnabled],[AccessFailedCount],[UserName],[ClientId],[LandlordNo],[TenantNo])
SELECT
[Id],[Email],[EmailConfirmed],[PasswordHash],[SecurityStamp],[PhoneNumber],[PhoneNumberConfirmed],[TwoFactorEnabled],[LockoutEndDateUtc],[LockoutEnabled],[AccessFailedCount],[UserName],[ClientId],[LandlordNo],[TenantNo]
FROM 
[CedarBackup].[dbo].[AspNetUsers]
WHERE ClientId = @ClientId 


SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[AspNetUsers] OFF
GO



SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[AspNetRoles] ON
GO



INSERT INTO [CedarSpaceDB].[dbo].[AspNetRoles]
([Id],[Name],[ClientId])
SELECT
[Id],[Name],[ClientId]
FROM 
[CedarBackup].[dbo].[AspNetRoles]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[AspNetRoles] OFF
GO





SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[AspNetUserRoles] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[AspNetUserRoles]
([UserId],[RoleId],[ClientId])
SELECT
[UserId],[RoleId],[ClientId]
FROM 
[CedarBackup].[dbo].[AspNetUserRoles]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[AspNetUserRoles] OFF
GO




SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[ArrearsLetter] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[ArrearsLetter]
([ClientId],[Tno],[MailAddress],[Salute],[Content],[LetterNo],[Days],[LordsDir],[TheAttachmentName],[Email])
SELECT
[ClientId],[Tno],[MailAddress],[Salute],[Content],[LetterNo],[Days],[LordsDir],[TheAttachmentName],[Email]
FROM 
[CedarBackup].[dbo].[ArrearsLetter]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[ArrearsLetter] OFF
GO





SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Arrears] ON
GO


INSERT INTO [CedarSpaceDB].[dbo].[Arrears]
([ClientId],[TenantNo],[DatePaidTo],[ArrearsDay],[DaysInArrears],[AmountInArrears],[Water],[LastPaid],[PrintIt],[Email],[WhichLetter],[DateLastPrinted],[Credit],[Invoices],[isVacating])
SELECT
[ClientId],[TenantNo],[DatePaidTo],[ArrearsDay],[DaysInArrears],[AmountInArrears],[Water],[LastPaid],[PrintIt],[Email],[WhichLetter],[DateLastPrinted],[Credit],[Invoices],[isVacating]
FROM 
[CedarBackup].[dbo].[Arrears]
WHERE ClientId = @ClientId 

SET IDENTITY_INSERT [CedarSpaceDB].[dbo].[Arrears] OFF
GO




























