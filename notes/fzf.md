# Fzf
https://www.youtube.com/watch?v=qgG5Jhi_Els&start=8

	'non-fuzzy-search
		> Prepend a quote to use a verbatim search instead of fuzzy

	search1 .sea search3$ !exclude
		> Search multiple matchs with space separation
		> Add ^ at the beginning to define beginning-of-match
		> Add $ at the end to define end-of-match
		> Add ! at the beginning to define excluded search terms

fzf -m
	> Runs fzf with multi selection mode
	> Press <tab> or <S-tab> to mark current item as part of the multi selection
