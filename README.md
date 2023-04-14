# LiliGPT Keycloak

Local environment for working with keycloak.

This is not ready to production, it's just for development.

You can easily clone this project and start working with keycloak.

## Requirements

- Docker
- Docker Compose
- VSCode

## Installing

1. Clone this project
2. Open the project in VSCode
3. Install F5 Anything extension<br/>
   (Press `Ctrl/Cmd + Shift + X` and search for `@category:debuggers f5 Anything`)
4. Open "Run and Debug" panel (`Ctrl/Cmd + Shift + D`)
5. Select `Install: Create admin user` in the dropdown
6. Press the play button (or `F5`) to run the task

## Running

1. Open "Run and Debug" panel
2. Select `Start: Keycloak` in the dropdown
3. Press the play button (or `F5`)

Note: If you want to detach the terminal, press the trash icon, it will keep running.

## Accessing

Open your browser and go to:

http://localhost:28080

## Manual Stopping

1. Open "Run and Debug" panel
2. Select `Stop: Keycloak` in the dropdown

## Uninstalling

If you are currently running the project, stop it first.

1. Open "Run and Debug" panel
2. Select `Uninstall: Complete uninstall` in the dropdown
3. Press the play button (or `F5`) to run the task

## Environment Variables

First uninstall from the step above.

You can override default environment variables by creating a `.env` file in the root of the project.

You can use the `.env.example` file as a template.
