https://github.com/hkcedricw/react-github-action-docker/workflows/react-in-docker/badge.svg

# An exmaple of using GitHub Action to push Docker image to GitHub Package
The docker image is an Express server running a sample React App, bootstrapped with create-react-app --template typescript

## Test the Express, React App
1. `npm install` in app folder
2. `npm install` in server folder
3. `npm run dev` in server folder

## Test Docker Image Building
1. `npm install` in app folder
2. `npm run build` in root folder

A Docker Image `github-action-sample` will be built  
check it by `docker image list`,  
test run by `docker run -d -p 3000:3000 github-action-sample`, visit `localhost:3000`, the sample React page shows.

## Note
Instead of putting the Express and React App together, its seperated such that the node modules required for building the React App will not be included to the Docker Image.

## Reference
https://github.com/features/actions
https://github.com/actions/starter-workflows/blob/master/ci/docker-push.yml










