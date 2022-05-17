echo $RANDOM | md5sum | head -c 20; echo;
echo "triggering:
  events:                       # List the events that trigger builds
    - push
    - pull_request
    - tag
  branch_patterns:              # Include or exclude watched branches
    - pattern: '*'
      include: true
      source: true
    - pattern: excluded-target
      include: false
      source: false
    - pattern: included-source
      include: true
      source: true
  tag_patterns:                 # Include or exlude watched tag labels
    - pattern: '*'
      include: true
    - pattern: excluded-tag
      include: false
    - pattern: included-tag
      include: true
  cancel_previous_builds: true
workflows:
  hello-world:
    name: Hello world workflow
    scripts:
        - ./npm
        - ls
        - echo " $RANDOM "
" > codemagic.yaml
