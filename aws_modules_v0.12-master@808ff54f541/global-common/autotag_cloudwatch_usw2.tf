# SNS to subscribe
resource "aws_sns_topic" "autotag_snstopic_usw2" {
  provider  = aws.uswest2
  name         = local.autotag_sns_name_usw2
  display_name = local.autotag_sns_name_usw2
  tags = merge(local.common_tags, map("Name", format(local.autotag_sns_name_usw2)))
}
#SNS subscription to lambda
resource "aws_sns_topic_subscription" "autotag_snstopic_subscription_usw2" {
  provider  = aws.uswest2
  topic_arn = aws_sns_topic.autotag_snstopic_usw2.arn
  protocol  = "lambda"
  #endpoint  = local.lambda_autotag_arn
  endpoint  = aws_lambda_function.lambda_autotag.arn
}
resource "aws_sns_topic_policy" "autotag_topic_policy_usw2" {
  provider  = aws.uswest2
  arn = aws_sns_topic.autotag_snstopic_usw2.arn
  policy = data.aws_iam_policy_document.autotag_topic_policy_template_usw2.json
}
data "aws_iam_policy_document" "autotag_topic_policy_template_usw2" {
  provider  = aws.uswest2
  policy_id = "__default_policy_ID"
  statement {
    actions = [
      "SNS:Subscribe",
      "SNS:SetTopicAttributes",
      "SNS:RemovePermission",
      "SNS:Receive",
      "SNS:Publish",
      "SNS:ListSubscriptionsByTopic",
      "SNS:GetTopicAttributes",
      "SNS:DeleteTopic",
      "SNS:AddPermission",
    ]
    condition {
      test     = "StringEquals"
      variable = "AWS:SourceOwner"
      values = [
        data.aws_caller_identity.current.account_id
      ]
    }
    effect = "Allow"
    principals {
      type        = "AWS"
      identifiers = ["*"]
    }
    resources = [
      aws_sns_topic.autotag_snstopic_usw2.arn
    ]
    sid = "__default_statement_ID"
  }
  statement {
    actions = [
      "SNS:Publish",
    ]
    resources = [
      aws_sns_topic.autotag_snstopic_usw2.arn
    ]
    effect = "Allow"
    principals {
      type        = "Service"
      identifiers = ["events.amazonaws.com"]
    }
    sid = "aws_cw_events"
  }
}
# cloudwatch event rule to trigger when a new ec2 created
resource "aws_cloudwatch_event_rule" "ec2ownertag_usw2" {
  provider  = aws.uswest2
  name        = local.cw_ec2autotag_name_usw2
  description = "Tag EC2 Instances with OS Type and Owner (Instance Creator) upon creation"
  event_pattern = <<PATTERN
{
  "source": [
    "aws.ec2"
  ],
  "detail-type": [
    "AWS API Call via CloudTrail"
  ],
  "detail": {
    "eventSource": [
      "ec2.amazonaws.com"
    ],
    "eventName": [
      "RunInstances"
    ]
  }
}
PATTERN
}
#Cloudwatch event rule target
resource "aws_cloudwatch_event_target" "ec2ownertagsns_usw2" {
  provider  = aws.uswest2
  rule      = aws_cloudwatch_event_rule.ec2ownertag_usw2.name
  target_id = "SendToSNS"
  arn       = aws_sns_topic.autotag_snstopic_usw2.arn
}
# Cloudwatch event rule to run once a day for tagging default tags all possible resources
resource "aws_cloudwatch_event_rule" "autotag_usw2" {
  provider  = aws.uswest2
  name        = local.cw_autotag_name_usw2
  description = "Tag all listed resources with default tags , runs once a day"
  schedule_expression = "rate(1 day)"
}
# Cloudwatch event rule target to trigger SNS to trigger lambda
resource "aws_cloudwatch_event_target" "autotagsns_usw2" {
  provider  = aws.uswest2
  rule      = aws_cloudwatch_event_rule.autotag_usw2.name
  target_id = "SendToSNS"
  arn       = aws_sns_topic.autotag_snstopic_usw2.arn
}
