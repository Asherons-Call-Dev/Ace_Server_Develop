# Information

## Useful docker compose commands
### start the database
`docker compose up partytide-db`

### build and start the server
`docker compose up partytide-server --build`

### stop all containers 
`docker compose down`

### stop all containers and destroy volumes WARNING: this will delete any databases persisted locally
`docker compsose down -v`

