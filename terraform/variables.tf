variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region for resources"
  type        = string
  default     = "us-central1"
}

variable "firestore_location" {
  description = "The location for Firestore database"
  type        = string
  default     = "us-central1"
}

variable "firestore_database_id" {
  description = "The Firestore database ID"
  type        = string
}

variable "cloudrun_service_name" {
  description = "The name for the Google Cloud Run service."
  type        = string
}


variable "oauth_client_id" {
  description = "Oauth client id"
  type        = string
}

variable "oauth_client_secret" {
  description = "oauth client secret"
  type        = string
  sensitive   = true
}

variable "allow_public_access" {
  description = "Whether to allow public access to the Cloud Run service"
  type        = bool
  default     = true
}

variable "additional_env_vars" {
  description = "Additional environment variables for the Cloud Run service"
  type        = map(string)
  default     = {}
}