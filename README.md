# Immunization FHIR Implementation Guide

This repository hosts the **Immunization FHIR Implementation Guide (IG)**. It provides FHIR profiles, extensions, value sets, and example resources to standardize and guide the implementation of immunization data exchange.

## Prerequisites

Before you start, ensure the following tools are installed:

- **Node.js**: [Download here](https://nodejs.org/).
- **Sushi (FHIR Shorthand)**: Install globally using:
  ```bash
  npm install -g fsh-sushi
  ```
- **Git**: [Download here](https://git-scm.com/).
- **Java JDK**: Required to run the FHIR IG Publisher. [Download here](https://www.oracle.com/java/technologies/javase-downloads.html).
- **FHIR IG Publisher**: [Download the JAR file](https://github.com/HL7/fhir-ig-publisher).

## Getting Started

### Clone the Repository

Clone this repository to your local machine:

```bash
git clone https://github.com/Itskiprotich/immunization-fhir-ig.git
cd immunization-fhir-ig
```

### Initialize the Project

If the project is not already initialized, use Sushi to set up the directory structure:

```bash
sushi --init
```

This generates the required folder structure:

```
immunization-fhir-ig/
├── input/
│   ├── fsh/              # FHIR Shorthand files
│   ├── pagecontent/      # Markdown files for IG pages
│   ├── images/           # Images for the IG
│   └── resources/        # Pre-defined FHIR resources
├── output/               # Generated IG files
└── config.yaml           # Configuration file for the IG
```

### Configure the IG

Edit the `config.yaml` file to match the details of your IG. Example:

```yaml
id: immunization-fhir-ig
canonical: https://github.com/Itskiprotich/immunization-fhir-ig
fhirVersion: 4.0.1
title: Immunization Implementation Guide
version: 0.1.0
publisher: 
  - name: "Your Name or Organization"
    telecom:
      - system: email
        value: your.email@example.com
```

### Add FHIR Artifacts

1. **Define Profiles**:
   Add FHIR Shorthand files to the `input/fsh/` folder. For example, create a profile for Immunization:

   ```fsh
   Profile: ImmunizationProfile
   Parent: Immunization
   Id: immunization-profile
   Title: "Immunization Profile"
   Description: "A profile for recording immunization data"

   * vaccineCode MS
   * patient MS
   * occurrenceDateTime MS
   * status MS
   ```

2. **Create Value Sets**:
   Define a value set for vaccine codes:

   ```fsh
   ValueSet: VaccineCodeVS
   Id: vaccine-code-vs
   Title: "Vaccine Codes"
   Description: "A value set for vaccine codes"
   Compose:
     include:
       system: http://hl7.org/fhir/sid/cvx
   ```

### Build the IG

Run Sushi to generate the FHIR artifacts:

```bash
sushi .
```

### Run the IG Publisher

Download the IG Publisher JAR file and run it to generate the final IG:

```bash
java -jar path/to/publisher.jar -ig .
```

The output will be generated in the `output/` directory.

### Preview Locally

To preview the IG locally, use a simple HTTP server:

```bash
python3 -m http.server 8000 --directory output
```

Access the IG in your browser at [http://localhost:8000](http://localhost:8000).

## Deployment

### GitHub Pages

1. Commit and push the generated `output/` folder:

   ```bash
   git add .
   git commit -m "Generated Immunization IG"
   git push
   ```

2. Enable GitHub Pages:
   - Go to the repository **Settings**.
   - Under **Pages**, set the source to the `output/` directory.

3. Access your IG at:
   ```
   https://Itskiprotich.github.io/immunization-fhir-ig/
   ```

### FHIR Registry Submission

Follow the [HL7 submission guide](https://confluence.hl7.org/display/FHIR/Publishing+HL7+FHIR+Implementation+Guides) to submit your IG to the HL7 FHIR Registry.

### Custom Hosting

You can host the `output/` directory on any web server, such as Linode or AWS.

## Maintenance

- **Versioning**: Update the version in `config.yaml` for each release.
- **Validation**: Use Sushi and the IG Publisher to validate your artifacts.
- **Automation**: Set up GitHub Actions to automate builds and deployments.

## Contributions

Contributions are welcome! Please submit a pull request or open an issue to suggest changes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
