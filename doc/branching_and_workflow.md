# Branching and Workflow

* New branches should be based on `master`.
* Each new feature and bugfixe should go in its own branch.
* When your feature branch is finished, submit a pull request to `master`.
* Another developer will review it, merge it in to master, and delete the branch.
* Delete your local branches after they have been merged
* Changes are deployed to staging with `bin/deploy_stage`
* Product owner reviews and approves changes
* Changes are deployed to production with `bin/deploy_prod`