{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "NetworkAccess",
            "Effect": "Deny",
            "Action": [
                "ec2:AcceptTransitGatewayVpcAttachment",
                "ec2:AcceptVpcEndpointConnections",
                "ec2:AcceptVpcPeeringConnection",
                "ec2:AdvertiseByoipCidr",
                "ec2:AllocateAddress",
                "ec2:AssignIpv6Addresses",
                "ec2:AssignPrivateIpAddresses",
                "ec2:AssociateAddress",
                "ec2:AssociateClientVpnTargetNetwork",
                "ec2:AssociateDhcpOptions",
                "ec2:AssociateRouteTable",
                "ec2:AssociateSubnetCidrBlock",
                "ec2:AssociateTransitGatewayRouteTable",
                "ec2:AssociateVpcCidrBlock",
                "ec2:AttachClassicLinkVpc",
                "ec2:AttachInternetGateway",
                "ec2:AttachVpnGateway",
                "ec2:AuthorizeClientVpnIngress",
                "ec2:CreateClientVpnEndpoint",
                "ec2:CreateClientVpnRoute",
                "ec2:CreateCustomerGateway",
                "ec2:CreateDefaultSubnet",
                "ec2:CreateDefaultVpc",
                "ec2:CreateDhcpOptions",
                "ec2:CreateEgressOnlyInternetGateway",
                "ec2:CreateFlowLogs",
                "ec2:CreateInternetGateway",
                "ec2:CreateNatGateway",
                "ec2:CreateNetworkAcl",
                "ec2:CreateNetworkAclEntry",
                "ec2:CreateRoute",
                "ec2:CreateRouteTable",
                "ec2:CreateSubnet",
                "ec2:CreateTrafficMirror*",
                "ec2:CreateTransitGateway*",
                "ec2:CreateVpc",
                "ec2:CreateVpcEndpoint",
                "ec2:CreateVpcEndpointConnectionNotification",
                "ec2:CreateVpcEndpointServiceConfiguration",
                "ec2:CreateVpcPeeringConnection",
                "ec2:CreateVpnConnection",
                "ec2:CreateVpnConnectionRoute",
                "ec2:CreateVpnGateway",
                "ec2:DeleteClientVpnEndpoint",
                "ec2:DeleteClientVpnRoute",
                "ec2:DeleteCustomerGateway",
                "ec2:DeleteDhcpOptions",
                "ec2:DeleteEgressOnlyInternetGateway",
                "ec2:DeleteFlowLogs",
                "ec2:DeleteInternetGateway",
                "ec2:DeleteNatGateway",
                "ec2:DeleteNetworkAcl",
                "ec2:DeleteNetworkAclEntry",
                "ec2:DeleteRoute",
                "ec2:DeleteRouteTable",
                "ec2:DeleteSubnet",
                "ec2:DeleteTrafficMirror*",
                "ec2:DeleteTransitGateway*",
                "ec2:DeleteVpc",
                "ec2:DeleteVpcEndpointConnectionNotifications",
                "ec2:DeleteVpcEndpointServiceConfigurations",
                "ec2:DeleteVpcEndpoints",
                "ec2:DeleteVpcPeeringConnection",
                "ec2:DeleteVpnConnection",
                "ec2:DeleteVpnConnectionRoute",
                "ec2:DeleteVpnGateway",
                "ec2:DeprovisionByoipCidr",
                "ec2:DetachClassicLinkVpc",
                "ec2:DetachInternetGateway",
                "ec2:DetachVpnGateway",
                "ec2:DisableTransitGatewayRouteTablePropagation",
                "ec2:DisableVgwRoutePropagation",
                "ec2:DisableVpcClassicLink",
                "ec2:DisableVpcClassicLinkDnsSupport",
                "ec2:DisassociateAddress",
                "ec2:DisassociateClientVpnTargetNetwork",
                "ec2:DisassociateRouteTable",
                "ec2:DisassociateSubnetCidrBlock",
                "ec2:DisassociateTransitGatewayRouteTable",
                "ec2:DisassociateVpcCidrBlock",
                "ec2:EnableTransitGatewayRouteTablePropagation",
                "ec2:EnableVgwRoutePropagation",
                "ec2:EnableVpcClassicLink",
                "ec2:EnableVpcClassicLinkDnsSupport",
                "ec2:ExportClientVpnClientCertificateRevocationList",
                "ec2:ExportClientVpnClientConfiguration",
                "ec2:ImportClientVpnClientCertificateRevocationList",
                "ec2:ModifyClientVpnEndpoint",
                "ec2:ModifySubnetAttribute",
                "ec2:ModifyTrafficMirror*",
                "ec2:ModifyTransitGatewayVpcAttachment",
                "ec2:ModifyVpcAttribute",
                "ec2:ModifyVpcEndpoint",
                "ec2:ModifyVpcEndpointConnectionNotification",
                "ec2:ModifyVpcEndpointServiceConfiguration",
                "ec2:ModifyVpcEndpointServicePermissions",
                "ec2:ModifyVpcPeeringConnectionOptions",
                "ec2:ModifyVpcTenancy",
                "ec2:ModifyVpnConnection",
                "ec2:ModifyVpnTunnelCertificate",
                "ec2:ModifyVpnTunnelOptions",
                "ec2:MoveAddressToVpc",
                "ec2:ProvisionByoipCidr",
                "ec2:RejectTransitGatewayVpcAttachment",
                "ec2:RejectVpcEndpointConnections",
                "ec2:RejectVpcPeeringConnection",
                "ec2:ReleaseAddress",
                "ec2:ReplaceNetworkAclAssociation",
                "ec2:ReplaceNetworkAclEntry",
                "ec2:ReplaceRoute",
                "ec2:ReplaceRouteTableAssociation",
                "ec2:ReplaceTransitGatewayRoute",
                "ec2:RestoreAddressToClassic",
                "ec2:RevokeClientVpnIngress",
                "ec2:TerminateClientVpnConnections",
                "ec2:UnassignIpv6Addresses",
                "ec2:UnassignPrivateIpAddresses",
                "ec2:WithdrawByoipCidr",
                "iam:AddClientIDToOpenIDConnectProvider",
                "iam:AddUserToGroup",
                "iam:AttachGroupPolicy",
                "iam:AttachRolePolicy",
                "iam:AttachUserPolicy",
                "iam:ChangePassword",
                "iam:CreateAccessKey",
                "iam:CreateAccountAlias",
                "iam:CreateGroup",
                "iam:CreateInstanceProfile",
                "iam:CreateLoginProfile",
                "iam:CreateOpenIDConnectProvider",
                "iam:CreatePolicy",
                "iam:CreatePolicyVersion",
                "iam:CreateRole",
                "iam:CreateSAMLProvider",
                "iam:CreateServiceSpecificCredential",
                "iam:CreateUser",
                "iam:CreateVirtualMFADevice",
                "iam:DeactivateMFADevice",
                "iam:Delete*",
                "iam:DetachGroupPolicy",
                "iam:DetachRolePolicy",
                "iam:DetachUserPolicy",
                "iam:EnableMFADevice",
                "iam:PutGroupPolicy",
                "iam:PutRolePermissionsBoundary",
                "iam:PutRolePolicy",
                "iam:PutUserPermissionsBoundary",
                "iam:PutUserPolicy",
                "iam:RemoveClientIDFromOpenIDConnectProvider",
                "iam:RemoveUserFromGroup",
                "iam:ResetServiceSpecificCredential",
                "iam:ResyncMFADevice",
                "iam:SetDefaultPolicyVersion",
                "iam:SetSecurityTokenServicePreferences",
                "iam:TagRole",
                "iam:TagUser",
                "iam:UntagRole",
                "iam:UntagUser",
                "iam:UpdateAccessKey",
                "iam:UpdateAccountPasswordPolicy",
                "iam:UpdateAssumeRolePolicy",
                "iam:UpdateGroup",
                "iam:UpdateLoginProfile",
                "iam:UpdateOpenIDConnectProviderThumbprint",
                "iam:UpdateRole",
                "iam:UpdateRoleDescription",
                "iam:UpdateSAMLProvider",
                "iam:UpdateSSHPublicKey",
                "iam:UpdateServerCertificate",
                "iam:UpdateServiceSpecificCredential",
                "iam:UpdateSigningCertificate",
                "iam:UpdateUser",
                "iam:UploadSSHPublicKey",
                "iam:UploadServerCertificate",
                "iam:UploadSigningCertificate",
                "s3:PutEncryptionConfiguration",
                "guardduty:Delete*"
            ],
            "Resource": "*"
        },
        {
            "Sid": "AWSAdminAccess",
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        },
        {
            "Sid": "UseCase2and3",
            "Effect": "Deny",
            "Action": "ec2:RunInstances",
            "Resource": "arn:aws:ec2:*::image/ami-*",
            "Condition": {
                "StringNotEquals": {
                    "ec2:Owner": [
                        "${account_id}",
                        "717063266043"
                    ]
                }
            }
        },
        {
            "Sid": "UseCase3",
            "Effect": "Deny",
            "Action": "ec2:RunInstances",
            "Resource": "arn:aws:ec2:*::image/ami-*",
            "Condition": {
                "StringEquals": {
                    "ec2:Owner": "${account_id}"
                },
                "StringNotEquals": {
                    "ec2:ResourceTag/HardenedAMI": "Yes"
                }
            }
        }
    ]
}