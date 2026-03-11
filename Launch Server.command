#!/bin/bash
cd "$(dirname "$0")"
echo "Starting Hugo server at http://localhost:1313"
echo "Press Ctrl+C to stop."
echo ""
open http://localhost:1313
hugo server
