# Resume Builder Web App

## Overview

This project is a Resume Builder web application developed using ReactJS for the frontend, Ruby on Rails for the backend, and Figma for design. It allows users to create and customize their resumes in a user-friendly interface. The project was managed using the Agile development methodology with Jira, and it took four months to complete. We deployed the frontend on Netlify and the backend on Render.

## Features

- Create and customize resumes with a user-friendly interface.
- Utilizes ReactJS to provide a responsive and interactive frontend.
- The Ruby on Rails backend provides a robust API for data storage and retrieval.
- Figma was used for design, ensuring a visually appealing and intuitive user interface.
- Data is stored in a PostgreSQL database for scalability and reliability.

## Technologies Used

- **Frontend**: ReactJS
- **Backend**: Ruby on Rails
- **Design**: Figma
- **Database**: PostgreSQL
- **Deployment**:
  - Frontend deployed on Netlify
  - Backend deployed on Render
- **Project Management**: Jira
- **Version Control**: GitHub

## Team and Roles

- **Scrum Master and Group Leader**: [authme-flophy](https://github.com/authme-flophy)
- **Frontend Developers**: [sylviaakoth](https://github.com/sylviaakoth), [patrick-njiru](https://github.com/Patrick-Njiru), [mbuvidev](https://github.com/MbuviDev), [authme-flophy](https://github.com/authme-flophy)
- **Backend Developers**: [authme-flophy](https://github.com/authme-flophy), [muthwi1234](https://github.com/muthwi1234), [Dankiprop](https://github.com/Dankiprop), [patrick-njiru](https://github.com/Patrick-Njiru)
- **Designers**: [sylviaakoth](https://github.com/sylviaakoth), [authme-flophy](https://github.com/authme-flophy)

## Project Management

We followed the Agile development methodology and used Jira as our project management tool. This approach allowed us to efficiently plan, execute, and monitor the progress of the project. As the Scrum Master and Group Leader, [authme-flophy](https://github.com/authme-flophy) played a crucial role in keeping the team organized and ensuring that the project stayed on track.

## Getting Started

To run this backend application locally or set up your own instance:

1. Clone the repository from GitHub:
   ```
   git clone [repository_url]
   ```

2. Navigate to the project directory:
   ```
   cd backend
   ```

3. Install the required gems:
   ```
   bundle install
   ```

4. Set up the database by running migrations:
   ```
   rails db:create
   rails db:migrate
   ```

5. Start the Rails server:
   ```
   rails server
   ```

6. The backend server will be accessible at `http://localhost:3000`.

Please note that the frontend and backend repositories are separate and must be set up independently. Refer to the frontend README for instructions on setting up the frontend.


For the frontend, please refer to the [frontend documentation](https://github.com/authme-flophy/resume-builder-front) or setup instructions in the corresponding repository.

## Deployment

- **Frontend**: We deployed the frontend to Netlify. The live application can be accessed at https://resume-builder-full.netlify.app
- **Backend**: We deployed the backend to Render. The live API can be accessed at https://resume-builder-fhfn.onrender.com

## What's remaining?

 - [ ] Use devise-auth-token for authentication
 - [ ] Generate resume from LinkedIn information
 - [ ] Generate downloadable resumes in pdf file format

## Contributing

We welcome contributions from the community. If you would like to contribute to the project, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and submit a pull request.
4. Our team will review the pull request, and upon approval, your changes will be merged into the main branch.

## License

[MIT](https://choosealicense.com/licenses/mit/)
