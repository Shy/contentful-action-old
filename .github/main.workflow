workflow "New workflow" {
  on = "push"
  resolves = ["Contentful Migration"]
}

action "Contentful Migration" {
  uses = "./contentful-migrate"
  secrets = ["accessToken", "spaceId","contentfulMigrationLocation"]
}
