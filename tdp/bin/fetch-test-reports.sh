#!/bin/bash

kafka_root_dir=$(realpath "$(dirname "$0")/../..")

reports_list=$(find "$kafka_root_dir" | grep -P 'reports/tests/test$')

mkdir -p "$kafka_root_dir/tdp/test-reports"

echo "Fetching test reports..."
for report in $reports_list; do
  report_package_path=$(echo "$report" | sed -r "s,$kafka_root_dir/,,")
  target_file=$(echo "$report_package_path" |
    sed -r 's,build/reports/tests/test,test-report,' | sed -r 's,/,-,g')

  echo "$report_package_path -> test-reports/$target_file"
  cp -rf "$report" "$kafka_root_dir/tdp/test-reports/$target_file"
done
