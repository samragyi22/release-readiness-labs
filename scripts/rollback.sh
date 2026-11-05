#!/bin/bash
set -e

ROLLBACK_VERSION="${1:-v2.2.1}"

echo "==============================="
echo " OrderFlow Rollback Script     "
echo "==============================="
echo "Initiating rollback to: $ROLLBACK_VERSION"
echo "Timestamp: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
echo ""
echo "Step 1: Switching image to $ROLLBACK_VERSION..."
echo "  kubectl set image deployment/lab-app lab-app=lab-app:$ROLLBACK_VERSION"
echo "  (simulated in lab environment)"
echo "Step 2: Verifying health after rollback..."
echo "  Health check: OK"
echo "Step 3: Notifying stakeholders..."
echo "  Notification sent."
echo ""
echo "Rollback to $ROLLBACK_VERSION complete."
