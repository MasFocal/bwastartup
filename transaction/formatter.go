package transaction

import "time"

type CampaignTransactionFormatter struct {
	Id        int       `json:"id"`
	Name      string    `json:"name"`
	Amount    int       `json:"amount"`
	CreatedAt time.Time `json:"cretead_at"`
}

func FormatCampaignTransaction(transaction Transaction) CampaignTransactionFormatter {
	formatter := CampaignTransactionFormatter{}
	formatter.Id = transaction.Id
	formatter.Name = transaction.User.Name
	formatter.Amount = transaction.Amount
	formatter.CreatedAt = transaction.CreatedAt
	return formatter
}

func FormatCampaignTransactions(transactions []Transaction) []CampaignTransactionFormatter {
	if len(transactions) == 0 {
		return []CampaignTransactionFormatter{}
	}

	var transactionsFormatter []CampaignTransactionFormatter

	for _, transactions := range transactions {
		formatter := FormatCampaignTransaction(transactions)
		transactionsFormatter = append(transactionsFormatter, formatter)
	}

	return transactionsFormatter
}

type UserTransactionFormatter struct {
	Id        int               `json:"id"`
	Amount    int               `json:"amount"`
	Status    string            `json:"status"`
	CreatedAt time.Time         `json:"created_at"`
	Campaign  CampaignFormatter `json:"campaign"`
}

type CampaignFormatter struct {
	Name     string `json:"name"`
	ImageURL string `json:"image_url"`
}

func FormatUserTransaction(transaction Transaction) UserTransactionFormatter {
	formatter := UserTransactionFormatter{}
	formatter.Id = transaction.Id
	formatter.Amount = transaction.Amount
	formatter.Status = transaction.Status
	formatter.CreatedAt = transaction.CreatedAt

	campaignFormatter := CampaignFormatter{}
	campaignFormatter.Name = transaction.Campaign.Name
	campaignFormatter.ImageURL = ""
	if len(transaction.Campaign.CampaignImages) > 0 {
		campaignFormatter.ImageURL = transaction.Campaign.CampaignImages[0].FileName
	}

	formatter.Campaign = campaignFormatter

	return formatter
}

func FormatUserTransactions(transactions []Transaction) []UserTransactionFormatter {
	if len(transactions) == 0 {
		return []UserTransactionFormatter{}
	}

	var transactionsFormatter []UserTransactionFormatter

	for _, transactions := range transactions {
		formatter := FormatUserTransaction(transactions)
		transactionsFormatter = append(transactionsFormatter, formatter)
	}

	return transactionsFormatter
}