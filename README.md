# AWS RDS CLUSTER Terraform module - 0.12

===========

Terraform module for creating AWS Aurora Cluster

These types of resources are supported:

- `DB Parameter Group`
- `DB Subnet Group`
- `RDS Cluster Parameter Group`
- `RDS DB Option Group`
- `RDS Cluster - Without Data [Empty Cluster] OR From Snapshot`
- `RDS Cluster Instance`
- `RDS DB Instance`

Root module calls these modules which can also be used separately to create independent resources:

* [DB Parameter Group](https://github.com/sanjeet-deshpande/tf_0.12_aws_rds/tree/master/db_parameter_group) - Creates RDS DB Parameter Group
* [DB Subnet Group](https://github.com/sanjeet-deshpande/tf_0.12_aws_rds/tree/master/db_subnet_group) - Creates RDS DB Subnet Group
* [DB Cluster Parameter Group](https://github.com/sanjeet-deshpande/tf_0.12_aws_rds/tree/master/rds_cluster_parameter_group) - Creates RDS Cluster Parameter Group
* [DB Option Group](https://github.com/sanjeet-deshpande/tf_0.12_aws_rds/tree/master/db_option_group) - Create RDS DB Option Group
* [RDS Cluster](https://github.com/sanjeet-deshpande/tf_0.12_aws_rds/tree/master/rds_cluster) - Creates RDS Cluster without data (Aurora)
* [RDS Cluster Instance](https://github.com/sanjeet-deshpande/tf_0.12_aws_rds/tree/master/rds_cluster_instance) - Creates RDS Cluster Instances
* [RDS DB Instance](https://github.com/sanjeet-deshpande/tf_0.12_aws_rds/tree/master/rds_db_instance) - Create RDS DB Instance

The input variables and output parameters are documented in:

* [DB Parameter Group/TERRAFORM.md](https://github.com/sanjeet-deshpande/tf_0.12_aws_rds/blob/master/db_parameter_group/TERRAFORM.md)
* [DB Subnet Group/TERRAFORM.md](https://github.com/sanjeet-deshpande/tf_0.12_aws_rds/blob/master/db_subnet_group/TERRAFORM.md)
* [DB Cluster Parameter Group/TERRAFORM.md](https://github.com/sanjeet-deshpande/tf_0.12_aws_rds/blob/master/rds_cluster_parameter_group/TERRAFORM.md)
* [DB Option Group](https://github.com/sanjeet-deshpande/tf_0.12_aws_rds/blob/master/db_option_group/TERRAFORM.md)
* [RDS Cluster/TERRAFORM.md](https://github.com/sanjeet-deshpande/tf_0.12_aws_rds/blob/master/rds_cluster/TERRAFORM.md)
* [RDS Cluster Instance/TERRAFORM.md](https://github.com/sanjeet-deshpande/tf_0.12_aws_rds/blob/master/rds_cluster_instance/TERRAFORM.md)
* [RDS DB Instances/TERRAFORM.md](https://github.com/sanjeet-deshpande/tf_0.12_aws_rds/blob/master/rds_db_instance/TERRAFORM.md)

## How do i use it?

* [Aurora](https://github.com/sanjeet-deshpande/tf_0.12_aws_rds/tree/master/examples/aurora)
* [RDS](https://github.com/sanjeet-deshpande/tf_0.12_aws_rds/tree/master/examples/rds)

### How to release newer versions of this module

This module uses a simple [Rakefile](./Rakefile) and a [VERSION](./VERSION)
file for following [semantic versioning](https://semver.org/).

1. To release a patch version of this module:

    ```sh
    rake release
    ```

    OR

    ```sh
    rake release:patch
    ```

2. To release a minor version of this module:

    ```sh
    rake release:minor
    ```

3. To release a major version of this module:

    ```sh
    rake release:major
    ```
