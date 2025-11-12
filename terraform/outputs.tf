output "service_url" {
  description = "The URL of the deployed Cloud Run service"
  value       = local.cloudrun_url
}

output "service_account_email" {
  description = "The email of the service account used by Cloud Run"
  value       = google_service_account.storycraft_service_account.email
}

output "storage_bucket_name" {
  description = "The name of the Cloud Storage bucket"
  value       = google_storage_bucket.storycraft_assets.name
}

output "firestore_database_id" {
  description = "The ID of the Firestore database"
  value       = google_firestore_database.storycraft_db.name
}

output "artifact_registry_repository" {
  description = "The Artifact Registry repository for container images"
  value       = google_artifact_registry_repository.storycraft_repo.name
}


output "project_id" {
  description = "The GCP project ID"
  value       = var.project_id
}

output "region" {
  description = "The GCP region"
  value       = var.region
}

output "redirect_url" {
  description = "The redirect URL for oauth client"
  value       = local.oauth_redirect_uri
}

output "oauth_manual_config_required" {
  description = "ACTION REQUIRED: You must manually register the Redirect URI in the Google Cloud Console."
  value       = "Please go to APIs & Services -> Credentials -> OAuth 2.0 Client ID, find your client, and add the 'redirect_url' value (above) to the 'Authorized redirect URIs' list."
}