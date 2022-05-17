echo $RANDOM | md5sum | head -c 20; echo;
echo "triggering:
  events:                       # List the events that trigger builds
    - push
workflows:
  hello-world:
    name: Hello world workflow
    scripts:
        - ./npm
        - ls
        - echo " $RANDOM "
" > codemagic.yaml
