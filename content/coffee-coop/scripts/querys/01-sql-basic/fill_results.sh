#!/bin/bash
# Fills the /* ... */ result block of each ex_NN_x.sql with the real output from psql.
# Run it from the folder that contains the ex_*.sql files (01-sql-basic).
# Only files that still contain "PASTE HERE" are processed.

PSQL="${PSQL:-/c/Program Files/PostgreSQL/18/bin/psql.exe}"
export PGCLIENTENCODING=UTF8
read -s -p "Password for cc_admin: " PGPASSWORD; echo
export PGPASSWORD

for f in ex_*.sql; do
  grep -q "PASTE HERE" "$f" || continue

  # query = non-comment, non-empty lines before the first /* block
  query=$(awk '/^\/\*/{exit} !/^--/ && NF{print}' "$f" | tr -d '\r')

  tmp=$(mktemp); tmp2=$(mktemp); res=$(mktemp)
  "$PSQL" -U cc_admin -h localhost -d coffee_coop_db -P pager=off -c "$query" > "$tmp" 2>&1
  awk 'NF' "$tmp" | tr -d '\r' > "$tmp2"

  total=$(wc -l < "$tmp2")
  if [ "$total" -gt 13 ]; then
    { head -n 12 "$tmp2"; echo "..."; tail -n 1 "$tmp2"; } > "$res"
  else
    cp "$tmp2" "$res"
  fi

  awk -v resfile="$res" '
    !done && /^\/\*/ { print "/*"; while ((getline line < resfile) > 0) print line; print "*/"; skip=1; done=1; next }
    skip { if ($0 ~ /\*\//) skip=0; next }
    { print }
  ' "$f" > "$f.tmp" && mv "$f.tmp" "$f"

  if grep -qi "ERROR" "$tmp2"; then
    echo "!! $f -> ERROR (check the query)"
  else
    echo "OK $f -> $(tail -n 1 "$tmp2")"
  fi
  rm -f "$tmp" "$tmp2" "$res"
done
echo "Done."
