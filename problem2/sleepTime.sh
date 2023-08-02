if [ -n "$1" ]; then
  SLEEP_TIME="$1"
fi

echo "Sleeping for $SLEEP_TIME seconds..."
sleep "$SLEEP_TIME"
echo "Done sleeping."

