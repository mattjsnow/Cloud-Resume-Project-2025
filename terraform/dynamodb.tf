resource "aws_dynamodb_table" "visitor_count" {
  name           = "Visitor_Count"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "record_id"

  attribute {
    name = "record_id"
    type = "S"
  }
}
