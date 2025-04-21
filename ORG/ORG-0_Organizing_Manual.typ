#import "org-template.typ": *

#show: project.with(
  title: "Organizing Manual",
  authors: (
    (name: "Joshua T", email: "joshua.turner@rebootroboticsalliance.org"),
  ),
  date: "2025-04-07",
  effective_date: "2025-04-19",
  document_number: 0,
  status: "DRAFT",
  purpose: [
    - Define the organizations objectives.
    - Provide instructions for creating action items and projects.
    - Define expectations for communicating changes and decisions.
    - Define organizational documentation.
    - Define communications methods.
    - Define a general Code of Conduct (CoC) and safety rules.
  ]
)

// This begins the section specific to this document
= Terms
/ CAR: Corrective Action Report
/ CADD: Computer Aided Design and Drafting
/ EE: Electrical Engineering
/ FIRST: For Inspiration and Recognition of Science and Technology
/ FRC: FIRST Robotics Competition
/ IT: Information Technology
/ JSA: Job Safety Analysis
/ ME: Mechanical Engineering
/ OMR: Organizational Memory Repository
/ ORG: Organizational Standard
/ PPE: Personal Protective Equipment
/ PRJ: Project Document
/ SDR: Team Standard
/ SE: Systems Engineering
/ TRM: Training Manual
/ YPP: Youth Protection Program

= Activities
Grayson Robotics is an organization for teaching high school students how to build and operate large (150 lbs), semi-autonomous, mobile robots.
We conduct our operations, communications, fundraising, and engineering activities to accomplish this.
Participation in the FIRST Robotics Competition (see: @frc) serves as the primary reason for building robots.
Additionally, other projects that require similar engineering and manufacturing capabilities may also inform the organizations structure.

== FIRST Robotics Competition (FRC) <frc>
The FIRST Robotics Competition (FRC) challenges teams of young people and their mentors to solve a common problem using a standard "kit of parts" and a common set of rules. Teams build robots from both the kit and the parts they design themselves. The official FRC season starts with event registration in the fall, proceeds from the Kickoff in early January through the primary robot design and build period in February. District qualifying events occur from late February through early April, followed by the state championship, and culminating at the FIRST World Championship events.

= Goals <goals>
Grayson Robotics has established the following goals:

+ Provide a practical engineering education.
+ Interdisciplinary approach to engineering that prevents miscommunication between engineering sub-teams.
+ Demonstrate comprehensive quality control in all engineering and manufacturing activities.
	+ Implement a Quality Management System as outlined by ISO 9001:2015.

== Goals specific to FRC
+ Compete in an official FRC season without losing a single match.
+ Operate the most reliable robot at any event we attend.
+ Maintain the most comprehensive knowledge base and documentation of any other FRC team.

== Educational strategy
Mentors do not treat students like subordinates.
A mentor shall not teach a student something in a way they wouldn’t teach another mentor.
Team members shall divide tasks between students and mentors such that students gain the most new knowledge from the tasks they complete.
In the absence a specific safety concern, students have the first choice for what they work on.
Mentors support this by providing students with the instruction necessary to complete their tasks and completing other tasks where necessary.

Instruction should not rely on rote memorization.
Instructors should focus on teaching students how to find and document correct information for future use.
Sub-teams - as defined in @sub-teams - may use tests to assess a members ability to recall information needed when using a reference is impractical.
For example: operating a robot in a competition match or making a repair between matches, where there's no time to reference a document.

= Organizing strategy
This section explains how Grayson Robotics divides work between team members and uses documents to manage that work.
Team members shall organize all work as the responsibility of one or more Sub-Teams listed in @sub-teams.
Team members shall document all work via Action Items, as shown in @action_items or Projects as shown in @projects.  

== Sub-Teams <sub-teams>
Grayson Robotics has organized itself into sub-teams;
Subsets of team members who contribute to a specific category of team activities.
Membership is not static and one member can participate with several sub-teams.

Sub-teams are not organized into a command hierarchy. Rather, sub-teams agree on
responsibilities to each other ahead of undertaking any interdisciplinary tasks or action items. 

Grayson Robotics treats all conflicts between sub-teams as process failures.
For example, if Mechanical Engineering and Electrical Engineering have a design conflict they - and the Systems Engineering Team - must resolve it by re-working the
engineering processes or design specification such that the designers have a better understanding of what they need to do. 

Put another way, the team resolves design or scheduling conflicts by interrogating and re-working our processes.

Sub-teams must not impede each other outside of the scope of their work.

Grayson Robotics consists of 12 permanent sub-teams:
- Strategy
- Intelligence
- Operations
- Safety
- Information Technology
- Manufacturing Engineering
- Outreach
- Marketing
- Systems Engineering
- Mechanical Engineering
- Electrical Engineering
- Programming

=== Strategy Team
The Strategy team investigates the limits that prevent the team from reaching its goals and - in dialog with the other sub-teams - formulates strategies to overcome these limits and meet team goals.

The Strategy team shall:
- Develop an overall team strategy for achieving the goals outlined in @goals.
	- The Strategy team may not impose this strategy on other sub-team but must propose and seek approval from all members.
- Develop the competition strategy for the FRC season to include:
	- which events to attend
	- what types of scoring to prioritize
	- what types of data to collect about other teams
- Set the schedule for the FRC robot project.
- Mediate scheduling conflicts for other sub-teams where no existing standard resolves the conflict.

=== Intelligence Team
The intelligence team collects and organizes facts about actors outside of Grayson Robotics for the other sub-teams.

The Intelligence Team shall:
- Gather quantitative data about the performance of other FRC teams' robots at competition.
- Gather qualitative data about the operations, strengths, and weaknesses of other FRC teams' robots.
- Gather information about the infrastructure, materiel resources, and engineering and manufacturing capabilities of other FRC teams.

=== Operations Team
Operations is the general service provider that ensures that all other sub-teams have what they need to fulfil their roles.
Operations is responsible for maintaining all tools, equipment and, furniture and managing inventory of all consumables.

The Operations team shall:
- carryout or oversee all facility, equipment, and tool maintenance
- control inventory of all tools, parts, and other consumables
- carryout or oversee the operation, maintenance, and transport of FRC robots
- create a plan for all team travel including at minimum: transport, lodging, food, and scheduling
- design and manage the competition pit and the Pit Crew as defined in @pit_crew
- requisition supplies when purchasing with team funds.

=== Safety Team
The Safety team ensures that safety is never compromised in favor of any other objective or goal.

The safety team shall: 
- create and audit safety standards
- audit the safety of processes, standards, and tools produced, maintained, or operated by other sub-teams
- create or audit the Job Safety Analysis for Standards and Training Manuals where required as per @sdr
- maintain the Safety Manual (see: @safety_manual)
- compel other sub-teams to assist with audits and assessments as needed and the other sub-team must comply

=== Information Technology Team (IT)
IT is the teams computer services provider and is responsible for managing all computer infrastructure.

The IT team shall:
- maintain communications infrastructure
- maintain computers controlled by Grayson Robotics
- training team members to use computer hardware and software
- maintain the computer and network infrastructure supporting the Grayson Robotics website
- update the firmware and software-images of FRC robot components

=== Manufacturing Team
The Manufacturing Team handles all metalwork, woodwork, and mechanical assembly.
The Manufacturing shall not handle electrical assembly.

The Manufacturing Team shall:
- research & develop in house mechanical assembly and fabrication capabilities
- create and manage any documentation required to outsource machining to a sponsor
- develop custom tooling for machining and assembly
- build FRC field elements
- create processes the Mechanical Engineering team can use to prove that their designs are practical to manufacture

=== Outreach Team
The Outreach Team is responsible for recruiting sponsors, students, and mentors, and managing relationships with current sponsors.

The Outreach Team shall:
- recruit students, mentors, and sponsors
- fulfil sponsor requirements and ensure other sub-teams do so as well
- plan events
- requisition supplies and services from sponsors
- approve designs that the ME Team wants sponsors manufacture

=== Marketing Team
The Marketing Team is responsible for the team brand and producing print and digital marketing materials.

The Marketing Team shall:
- create website & social media content
- create all advertising materials
- take photo and video of team activities
- create and maintain a standardized brand

=== Systems Engineering Team (SE)
The Systems Engineering Team is responsible for designing the FRC robot and other systems where,
two or more other sub-teams must work together to design the system.

The ME, EE, IT, Programming, & Manufacturing teams don't design the robot.
These sub-teams are responsible for designing sub-systems in conformance with the specification created by SE.
In the course of creating the system specification the SE team shall consult the other sub-teams and seek final approval from them.

The Systems Engineering Team shall:
- design the FRC robot
- design and create specifications for non-FRC projects
- write requirements for all systems designed by the team
- enumerate the initial requirements for the FRC robot based on the competition strategy and the game manual
- track new FRC robot requirements as they and other sub-teams discover them, over the course of the build season
- mediate design conflicts between other sub-teams
- obtain approval from the relevant sub-team when making a decision that affects their responsibilities
- adhere to the strategy created by the Strategy Team and agreed on by the whole team

=== Mechanical Engineering Team (ME)
The Mechanical Engineering Team designs and tests mechanical systems.

The Mechanical Engineering Team shall:
- design and test mechanical components
- produce and version control mechanical CADD
- adhere to the system specification and requirements created by the Systems Engineering and Strategy teams
- adhere to the requirements and standards of the Electrical Engineering Team where applicable.
- prove that their designs are practical to manufacture either:
  - in-house by using existing Manufacturing Team and Electrical Team standards
  - or by outsourcing manufacturing to a sponsor

=== Electrical Engineering Team (EE)
The Electrical Engineering Team designs, builds, and tests electrical systems.

The Electrical Team shall:
- design and test electrical components
- assemble the electrical system on FRC robots
- produce and version control electrical CADD
- research and develop electrical manufacturing and assembly techniques
- adhere to the system specification and requirements created by the Systems Engineering and Strategy teams

=== Programming Team
The Electrical Engineering Team designs, builds, and tests software systems.

The Programming Team shall:
- design, develop, and test all software components
- version control all software
- adhere to the system specification and requirements created by the Systems Engineering and Strategy teams

== Projects <projects>
Projects organize non-standard or non-recurring work, and coordinate major efforts between Sub-Teams.
Team members shall use the project process where:
- they require a budget, scare resources, or a requisition of supplies
- they expect work to go on for more than one week
- different sub-teams need to coordinate

Otherwise, the Action Item process described in @action_items may be more appropriate.

=== Project process goals
This process intends to:
- help team members avoid unnecessary tasks
- help team members compose a budget
- help team members identify and organize non-recurring tasks
- create a priority ranking system between different project types

=== Project process
Projects progress through three stages:
1. Draft
2. Open
3. Closed

To start a project, at least one team member shall propose the project by presenting a
draft project document to other team members.

Project documents shall begin with a statement of how it helps implement the team strategy or FRC season strategy.

The members proposing the project shall seek approval from all members expected to help complete the project,
and members expected to use anything created with the project.

Additionally, depending on the required resources, the proposal authors shall seek approval from these groups:

- if requesting funding, the group managing the requisite budget must approve
- if requesting computing resources, IT must approve
- if requesting shop-tools, parts, or work space, operations must approve

Once the project authors obtain all approvals, they shall change the project status to Open and
use the requested resources to complete the project.

If a team member wishes to change the project goals, objectives, or resource allocation
they must obtain approval from all team members who the change would affect.

Once team members realized all project goals, the project authors shall change its status to Closed.

To close a project before realizing all goals, all members working to complete the project
must agree to do so.

=== Project types
This standard recognizes the following project types:
- Safety CAR Project
	- projects resolving a safety related Corrective Action Report
- Safety Project
	- projects intended to rectify a potential safety issue that hasn't yet lead to an incident
- Standards Project
	- projects that would update an organization-wide standard
- Robot CAR Project
	- projects resolving a CAR related to and FRC robot project
- FRC Robot Project
	- The FRC robot project for the current competition season
- CAR Project
	- projects resolving all other types of CAR
- General Project
	- any other projects

==== Ranking projects
Project ranking shows team members what work should proceed where working on one project
conflicts with work on another project such that only one may progress at the same time.

By default, project types have the following rank. From most to least important:

1. Safety CAR
2. Safety 
3. Standards
4. Robot CAR
5. FRC Robot
6. CAR
7. General

Safety CAR projects shall take precedence over tasks connected to any other project type.

Where conflicts arise between Safety CAR projects,
the team shall prioritize the CAR for the incident most likely to reoccur sooner.

Safety projects shall take precedence over all non-safety projects.

For projects not related to Safety or Safety CARs:
a project shall take precedence over other projects of a lower rank, unless a team member initiates the process for waiving project in @waiving_project_rank.

==== Waiving project rank <waiving_project_rank>
This process shall not apply to Safety, or Safety CAR, projects.

When tasks connected to non-safety projects of different rank require the same resources, team members may give precedence to the task of lower rank if all members who approved the relevant projects agree.


== Action Items <action_items>
Team members start an Action Item when they find a problem they wish to solve that doesn't require a project or resources allocated for a specific use.
The purpose of the Action Item process it to ensure that team members document and communicate all efforts to other team members.

The Action Item process is only appropriate for tasks that team members can complete within a week. 
Team members shall use the Action Item process when:
- the tasks involved require more than one person
- the tasks interfere with other work and require coordination with the rest of the team

=== Action Item process
Using the team Band for communications:
+ Discus action item to determine relevant sub-teams.
+ Authors create a list of tasks and delegate as appropriate.
+ Set a deadline to either finish, abandon, or promote the action item to a full project.
+ Notify all members of relevant sub-teams.
+ Obtain the ascent of everyone expected to do work to complete any projects or tasks.
+ Author shall document the completion of the action item after team members complete all tasks.

If the action item requires time greater than the original deadline set, and or allocation of funds, the authors shall turn it into a project.

== Roles <roles>
A Role is a set of tasks and the resources made available to team members to complete them.
Grayson Robotics creates roles for projects or as part of a process defined by a standard.
This section defines all roles that the team must fulfill at all times or during the entire competition season.

=== Scouts <scouts>
Scouts gather qualitative and quantitative data about the capabilities and performance of other FRC teams' robots competing in the same events as Grayson Robotics.
The Strategy Team shall determine what data scouts collect.
The Intelligence Team shall select members to be scouts.
Scouts need not go to competition in person if gathering quantitative data on robot performance.

=== Pit Crew <pit_crew>
Members of the Pit Crew must attend competition and arrive promptly when the doors open unless otherwise stated by the schedule put forth by the Operations sub-team. 

The Pit Crew are team members from different sub-teams who perform maintenance on the robot between matches.

Each sub-team determines which members may need to go to the pit on a per-competition basis.

The drive team are necessarily pit crew.
Each member of the Pit Crew is not necessarily needed in the pit at all times.
The Operations Team decides who needs to be present in the pit based on who they need to complete specific tasks.

=== Drive Team <drive_team>
The Operations Team shall form the drive team through the following process:
+ Members must pass an assessment of their basic ability to perform their respective role.
+ Members must prove their ability to perform their respective role without incurring penalties.
+ Final selection is random/by lottery.

The Strategy Team shall define the requirements for passing the exam.
The drive coach shall be a member of the strategy team unless no strategy team members pass the assessment.

Drive team membership shall stay the same during an ongoing competition season unless:
- a member resigns
- a member requests to be leave due to an emergency
- a member violates the Code of Conduct as outlined in @code_of_conduct
- a member violates a safety rule defined in @safety or the Safety Manual (see: @safety_manual)
- a member is late to more than one (1) match

= Internal communications
== Personal email
Official communication and on-boarding as well as interacting with FIRST registration systems.
Sponsor communications.
Team members shouldn't use email for daily tasks.

== Git repositories
Controlled documentation, Project and Action Item documentation, and source code.

== File server
Other digital, especially non-text data, not covered by Git Repositories.

== Band
Meeting scheduling, calendar, and general communications. Use this for daily discussion.

= Meetings
Team members shall propose a meeting via a communications visible to all team members.
Typically, team members propose meetings via Band.
Team members' meeting proposal shall include the following information:
- Date, time, location, and other pertinent logistics.
- List any specific Projects they intend to work on.
- What sub-teams or individuals they think should attend

Meetings require the approval of at least one mentor and anyone expected to complete work at the meeting.
The team member making the proposal shall add the meeting to the Band calendar after receiving approval.

== Safety briefing
Team members shall give a safety briefing for all persons who haven't visited the location before.
The briefing shall include the following: 
+ exit locations 
+ fire extinguisher locations 
+ fire evacuation plan & evacuation map locations 
+ fire alarm activation panel locations 
+ first aid kit locations 

+ Locations of other safety equipment if available. For example: eye wash station and emergency shower.

= Organizational Memory <om>
Documentation, namely building and maintaining an institutional knowledge base, is of the highest importance to Grayson Robotics.
This manual serves as the top-level document for Grayson Robotics. 

Organizational Memory (OM) is the sum total of accurate, recorded, and shared information that team members produce to aid in their work.

Requirements:
+ All other documentation shall be traceable to this manual.
+ Grayson Robotics shall establish a Document Control System (DCS) for all OM.
+ Grayson Robotics shall author all documentation in an open source and plain text format where the document type permits and the technology exists.
+ All documents shall adhere to the Concise Guide to APA Style, seventh Edition, ISBN: 978-1-4338-3273-4, sections 4 and 5.

Types of OM:
- Controlled Working Files
- Project Planing Documents
- Policies

The IT team shall define procedures for managing OM, and requirements for document form, in: ORG-1 Document Control System (see: @org-1).

== Controlled Working Files
Controlled Working Files (CWF) are:
- any files used to define the form and function of an FRC robot other than the project document
- operating procedures for an FRC robot
- the source code used to control the robot or for processing scouting data
- CADD files used to build an FRC robot
- the brand standard and other marketing material
- any forms or standardized documents for communication with sponsors

== Project Planing Documents
Project Planning Documents (PPD) capture the Action Items process in @action_items or the Project process in @projects.

== Policies
Grayson Robotics Policies capture processes and techniques intended for repeated use indefinitely.
Team members shall author these documents only when the process is well known, and they expect it to be relevant for over a year.
Team members shall take care to create or deprecate policies only after careful reflection on the underlying process.

Grayson robotics recognizes three types of policy:
- Standards, including Organizational standards.
- Training manuals.
- Corrective Action Reports

=== Standards (SDR) <sdr>
Standards (SDR) define common processes and procedures for long-term use. 
Team members shall not standardize unnecessary or unsafe rules and processes.
The sub-Teams and team members that write or approve a standard must follow its processes.

SDRs shall adhere to the following:
- Standards can be interdisciplinary and apply to multiple teams.
- Immediate safety concerns always take precedent over following SDRs.
- SDRs written by the Safety sub-team always take precedent over other SDRs.
- Standards supersede training documents in the event of a conflict.
- Standards shall not conflict with each other.

Instead of defining a new Standard the document may simply reference external media (papers, books, videos, etc.),
or standards from outside organizations (ANSI, ISO, Georgia Tech, etc.). 
A copy of the referenced material shall be available to all team members.

=== Organizational Standards (ORG)
Organizational (ORG) standards are a kind of standard that applies to the entire team and all team members must approve and adhere to them.
ORGs, including this document, define the structure and functions of Grayson Robotics.

ORGs shall adhere to the following:
- ORGs necessarily apply to all sub-teams.
- Immediate safety concerns always take precedent over following ORGs.
- ORGs supersede all documents of different types in the event of a conflict.
- ORGs may not conflict with each other.

==== ORG-0 Organization Manual
This Document. Describes the general organizational context and activities. All other documentation is traceable back to ORG-0.
*Authored by:* All team members

==== ORG-1 Document Control System <org-1>
- Further define what types of information count as OM.
- Establish procedures for formatting, maintenance, change communication, and revision control of OM. 
- Establish a Document Control System (DCS) for managing OM.

*Authored by:* All team members

==== ORG-2 Operations Manual
- Defines general workspace management and cleaning standards.
- Defines inventory management process.
- Defines competition pit management procedures.

*Authored by:*
- Operations Team
- Safety Team

==== ORG-3 Safety Manual <safety_manual>
- Defines the general safety program.
- Defines safety training required to be a team member.
- Defines the Job Safety Analysis (JSA) process.
- Outlines best practice for safe robot design.
- Outlines best practice for safe use of communications infrastructure.

*Authored by*
- Safety Team

==== ORG-4 Engineering Process
- Defines the general engineering processes.
- Defines the engineering process for competition robot design.
- Defines responsibilities between technical sub-teams during the FRC robot design process.

*Authored by:*
- Systems Engineering Team
- Safety Team
- Strategy Team
- IT Team
- Manufacturing Team
- Mechanical Engineering Team
- Electrical Engineering Team
- Programming Team

=== Corrective Action Reports (CAR) <car>
Corrective Action Report (CAR) process helps team members trace, record, and correct flaws in designs, processes, or production, that have
significant and unexpected impact on safety, operations, or competitiveness.

Incidents that require the team to initiate the CAR process include:
+ Injury to a member of the team while acting on its behalf.
+ Injury to persons outside of the team resulting from actions of a member of the team, who is acting on its behalf.
+ Injury to any person caused by the teams equipment or at its facilities.
+ Unexpected failure of a robot in an official FRC playoff match.
+ Unexpected failure of equipment or tooling that delays the manufacturing or critical modification of an FRC robot.

In cases one through three, a team member shall initiate the CAR within twenty-four (24) hours of the incident.
In cases four or five, a team member shall initiate the CAR whenever it is most convenient but must be before the issue can re-occur unexpectedly.

==== CAR process
A CAR shall have one of two statuses;
- Open: once the author creates the document
- Closed: after team members complete all related work 

The steps of a CAR process are as follows:
+ Create a working document to track the CAR process.
+ Collect: Work with all involved parties to thoroughly document the incident.
+ Trace: Investigate the collected information and attempt to trace the root cause of the incident.
+ Take Action: Create a list of tasks to complete to eliminate the root cause. 
+ Progress Tracking: Document progress toward completing action items.
+ Close when all tasks are complete.

It is appropriate for team members to initiate a Project or Action item as described in: ORG-0 as needed to organize tasks.
In that case, the Project documents or Action Item Issues shall contain a reference to the CAR document name and number.

=== Training Manuals (TRM)
Training Manuals organize and preserve written instructions and other media that Grayson Robotics uses for reference, training, and teaching.
A training document may specify instructions for teaching or take the form of a tutorial regarding any subject applicable to the sub-team the document is relevant to. 

Each TRM document shall meet the following requirements:
+ Named and titled for the tool, technique, technology, or process it focuses on.
+ List any hazardous materials learners may encounter, required Personal Protective Equipment (PPE), and any other known safety hazards.
+ List intended outcomes for learners.
+ Detail what the training covers and - at the discretion of the author - note similar topics the document will not cover.
+ All training documents shall begin with the following warranty and disclaimer:
"The authors, maintainers, and distributors of this document shall not be liable for any damages, losses, injury, costs or expenses, direct,
indirect or incidental, consequential or special, arising out of, or related to the use of information within
this document, or any material it references."

A training document may substitute its content section for some other media (video, web-based article, book, etc.),
including sub-sets of other media such as a timestamp of a video or pages of a book so long as:
- The author credits the original content author if known.
- The author links to the webpage source if available.
- The author cites the content using APA style.
- The authors make a copy of the referenced media available to other team members.
- The TRM includes the SHA-256 hash of the reverenced material.

Auditors of TRMs shall - at minimum - do the following:
- Remove outdated or incorrect information.
- Check for and remove previously unknown safety hazards.
- Ensure training doesn't reinforce poor safety practices.
- Update references to external documents or media.
- Eliminate conflicting information.
- Find instructions and information to improve.

== Policy document audits
All sub-teams shall audit their TRM and SDR documents no less than once per year to ensure correctness, safety, compliance with any formatting standards, and compliance with revision control standards.

One member per sub-team shall audit organizational standards no less than once per year to ensure correctness, safety, compliance with any formatting standards, and compliance with revision control standards.
All team members must approve any changes to organizational standards.

== Policy document Job Safety Analysis
All SDR or TRM processes requiring use of tools, handling objects that may cause injury if dropped, use of chemicals, or require PPE shall include a JSA for the relevant processes. The Safety team may also order the addition of a JSA to a SDR or TRM as they see fit.

= General Safety <safety>
For any area where someone may be:
- fabricating or assembling anything
- machining parts
- cleaning debris generated from machining
- operating a robot

the minimum required attire and Personal Protective Equipment (PPE) are:
- Safety glasses
- Pants
- Closed toed shoes
- Hair tied back

Additionally, all members should read and adhere to the guidelines in the latest version of the #link("https://www.firstinspires.org/sites/default/files/uploads/resource_library/frc/team-resources/safety/ftc-frc-safety-manual.pdf")[FIRST Robotics Competition and FIRST Tech Challenge Safety Manual].

The Safety Manual defined in @safety_manual covers further safety topics.

== Youth Protection Program (YPP)
All team members shall adhere to the FIRST Youth Protection Program policies at all times.
The YPP policies are available on the #link("https://www.firstinspires.org/resource-library/youth-protection-policy")[Youth Protection Program Webpage].
In particular, all members shall read and follow the most up-to-date version of the #link("https://www.firstinspires.org/sites/default/files/uploads/about/FIRST-YPP-ProgramGuide.pdf")[FIRST YPP Program Guide].

= Code of Conduct <code_of_conduct>
Team members shall adhere to the following:
- Always act safely, including during any official or unofficial meeting, traveling to team events, using remote communications, and during competitions.
- Obey all safety rules in the Shop.
- No horseplay in the shop or competition pit.
- All Students must maintain an email account and regularly check for updates on all team communications platforms.
- Any member traveling with the team to any event must always have a cellular device on their person.
- No running anywhere anytime.
- Don’t leave the Workspace without notifying at least one mentor prior.

== FIRST Code of Conduct
In addition to the Grayson Robotics Code of Conduct, team members shall follow the #link("https://www.firstinspires.org/about/code-of-conduct")[FIRST Code of Conduct]:
- Exhibit Gracious Professionalism® at all times. Gracious Professionalism is a way of doing things that encourages high-quality work, emphasizes the value of others, and respects individuals and the community. With Gracious Professionalism, fierce competition and mutual gain are not separate notions.
- Ensure the safety of all participants in FIRST activities.
- Not engage in any form of bullying, harassment, use of profane or insulting language, or any actual or threatened violence.
- Adhere to all FIRST Youth Protection Program (YPP) policies.
- Report any unsafe behavior to event or local FIRST leadership.

= Membership
Trial member:
- Read and understood ORG-0 & ORG-3.
- Legal guardian read and understood ORG-0 & ORG-3.
- Select three sub-teams to shadow and complete small tasks with.
- Shall not author controlled documents.
- Shall not use power tools.
- Shall not travel with the team outside of the shop.
- Shall not (what else?)

Full member:
- Read and understood all Organizational Standards.
- Trial member for at least one month.
- Apply to a sub team and have all members of that sub-team accept the application.

== Expulsion Process
To expel a team member:
+ The member must have violated safety rules outlined in @safety or the Safety Manual (see: @safety_manual), or violated the Code of Conduct outlined in @code_of_conduct.
+ Another team member must request that the team expel the offending member because of the violation.
+ Greater than 50% of the full members, and at least one mentor or coach, must agree to the expulsion. 

A mentor shall document this process as part of a #link(<car>)[CAR] with all identifying information about individuals anonymized.

