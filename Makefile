BASEDIR=$(CURDIR)
OUTPUTDIR=$(BASEDIR)/public
S3_BUCKET=databravata.com.br



help:
	@echo 'Makefile for a pelican Web site                                           '
	@echo '                                                                          '
	@echo 'Usage:                                                                    '
	@echo '   make preview  					  serve with drafts              '
	@echo '   make serve                          serve the final without drafts    '
	@echo '   make generate                      regenerate files for publication'
	@echo '   make deploy                        generate using production settings '

preview:
	hugo server  -w -D

serve:
	hugo server

generate:
	hugo

deploy:generate
	#s3cmd sync $(OUTPUTDIR)/ s3://$(S3_BUCKET) --acl-public --delete-removed --guess-mime-type


.PHONY:  help preview serve deploy
