#!/bin/bash
apt update
apt install -y apache2

INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>My Portfolio</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      background: #f4f4f4;
      color: #333;
    }

    header {
      background-color: #333;
      color: white;
      padding: 2rem 1rem;
      text-align: center;
    }

    header h1 {
      margin: 0;
      font-size: 2.5rem;
    }

    header p {
      margin: 0.5rem 0 0;
      font-size: 1.2rem;
    }

    section {
      padding: 2rem 1rem;
      max-width: 900px;
      margin: auto;
    }

    .about, .contact {
      background: white;
      margin-bottom: 2rem;
      border-radius: 5px;
      padding: 1.5rem;
      box-shadow: 0 0 10px rgba(0,0,0,0.05);
    }

    .projects {
      display: grid;
      gap: 1rem;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    }

    .project-card {
      background: white;
      padding: 1rem;
      border-radius: 5px;
      box-shadow: 0 0 8px rgba(0,0,0,0.05);
    }

    .project-card h3 {
      margin-top: 0;
    }

    footer {
      text-align: center;
      padding: 1rem;
      background: #333;
      color: white;
    }

    a {
      color: #007acc;
      text-decoration: none;
    }

    a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>

  <header>
    <h1>Subhransu Behera</h1>
    <p>DevOps Engineer</p>
	<h2>Instance ID: <span style="color:green">$INSTANCE_ID</span></h2>
  </header>

  <section class="about">
    <h2>About Me</h2>
    <p>Hello! I'm Subhransu, Motivated and detail-oriented DevOps Engineer fresher with a strong foundation in software development, system administration, and automation. Proficient in using tools like Git, Docker, Jenkins, and basic cloud platforms such as AWS or Azure. Hands-on experience through academic projects or internships in CI/CD pipelines, version control, containerization, and infrastructure-as-code (IaC) using tools like Terraform or Ansible. Passionate about bridging development and operations to streamline software delivery, enhance system reliability, and automate manual processes. Eager to contribute to dynamic teams and grow in a fast-paced DevOps environment.</p>
  </section>

  <section>
    <h2>My Projects</h2>
    <div class="projects">
      <div class="project-card">
        <h3>Portfolio Website</h3>
        <p>A personal portfolio to showcase my web development work.</p>
        <a href="#">View Project</a>
      </div>
      <div class="project-card">
        <h3>Infrastructure on AWS</h3>
        <p>A simple task manager built with JavaScript and local storage.</p>
        <a href="#">View Project</a>
      </div>
      <div class="project-card">
        <h3>Responsive Blog</h3>
        <p>A mobile-friendly blog template built with HTML and CSS Grid.</p>
        <a href="#">View Project</a>
      </div>
    </div>
  </section>

  <section class="contact">
    <h2>Contact Me</h2>
    <p>Email: <a href="mailto:subhransubehera87@gmail.com">subhransubehera87@gmail.com</a></p>
    <p>LinkedIn: <a href="www.linkedin.com/in/subhransu1920/" target="_blank">www.linkedin.com/in/subhransu1920/</a></p>
    <p>GitHub: <a href="https://github.com/Behera873" target="_blank">https://github.com/Behera873</a></p>
  </section>

  <footer>
    <p>&copy; 2025 John Doe</p>
  </footer>

</body>
</html>

systemctl start apache2
systemctl enable apache2