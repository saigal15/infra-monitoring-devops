#!/usr/bin/env bats

@test "L'API /metrics doit répondre avec des métriques système" {
  run curl -s http://localhost:5000/metrics

  # curl doit réussir
  [ "$status" -eq 0 ]

  # Vérifier la présence des métriques
  echo "$output" | grep -q "cpu_percent"
  echo "$output" | grep -q "memory_percent"
  echo "$output" | grep -q "disk_percent"
}

