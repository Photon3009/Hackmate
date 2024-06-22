# HackMate: Swipe, Match, Code: The Ultimate Hackathon Networking App

<div align="center">
<img src="https://github.com/Photon3009/Hackmate/assets/100941430/2fad172e-9b4b-4a35-aabb-0bbf2f3b1d65" alt="animated " height="500" width="230" />
</div>

## Project Description
Are you tired of swiping left and right on Tinder without finding your perfect match? What if you could use the same matchmaking features of Tinder, but for finding the perfect team members for your upcoming hackathons? Many hackathon participants struggle to find team members with complementary skills and shared interests. They spend a lot of time searching and networking with others, which often leads to frustration.

<div align="center">
<img src="https://github.com/Photon3009/Hackmate/assets/100941430/481dc2ea-8351-4236-9001-6388bb83a39f" alt="animated " height="260" width="260" />
</div>

**My Solution** is to build an app that matches hackathon participants with like-minded individuals who share common interests and goals. If two users swipe right on each other, they can start chatting within the app to discuss their project ideas and goals.

Organizers can say goodbye to the hassle of setting up a separate Discord server for hackathon communication. My app simplifies the process by providing a built-in group creation feature. As soon as participants register for the hackathon, they are automatically added to the dedicated group within the app. This group serves as a centralized hub for all hackathon-related communication, eliminating the need for participants to join external platforms. Moreover, once the hackathon concludes, the group is automatically deleted, eliminating the need for manual clean-up and ensuring efficient management of hackathon-specific communication within the app.

## Reason for Tackling the Problem
**Finding Team Members**: Many aspiring participants face significant challenges when it comes to finding suitable team members for hackathons. While numerous websites facilitate hackathon registrations, these platforms cannot often effectively connect individuals and form cohesive teams. Consequently, many talented individuals are unable to participate in hackathons due to a lack of compatible teammates. Even popular networking platforms like LinkedIn have failed to address this issue. LinkedIn's focus is on professional networking across various industries, and while it offers a vast user base, it may not attract individuals specifically looking for hackathon collaborations. LinkedIn's search and filtering options are not optimized for hackathon-specific criteria.

**Effective Communication**: Creating a separate Discord server for hackathon communication introduces challenges and inefficiencies. It requires additional effort from participants to join and navigate another platform, leading to potential confusion and a fragmented communication experience. This can also result in missed updates and reduced engagement. Managing a Discord server separately adds an extra layer of complexity for organizers, who must ensure that all participants join the server and have access to the relevant channels. Manual deletion of the group after the hackathon requires extra effort. My app eliminates these obstacles by providing a built-in group feature, automating participant joining and group deletion, simplifying communication, and enhancing collaboration for hackathon organizers and participants.

## How HackMate Works

- My app allows users to specify their preferences for team members' location and skills.
- Using a swipe feature, the app matches users based on their preferences and establishes connections.
- Once a match is made, users can start chatting within the app to discuss their project ideas and goals.
- If users decide to collaborate, they can create a team within the app.
- The team leader has the ability to assign tags and roles to team members for better organization.
- There is no need to join separate Discord servers; my app integrates with the organizer's group to manage communication.
- As soon as a user registers for a hackathon, they are automatically included in the group present in the app.
- The group created for the hackathon's communication is automatically deleted once the hackathon ends, ensuring a clean and organized experience.

  <div align="center">
<img src="https://github.com/Photon3009/Hackmate/assets/100941430/52e8dbca-887f-4f8b-bcbe-8918db20ab75" alt="animated " height="620" width="1920" />
</div>

  <div align="center">
<img src="https://github.com/Photon3009/Hackmate/assets/100941430/d2e202fb-ed61-41e2-aed5-a1fab664e209" alt="animated " height="620" width="1920" />
</div>

  <div align="center">
<img src="https://github.com/Photon3009/Hackmate/assets/100941430/e4d58dbc-3cec-43d5-878d-480a019ab696" alt="animated " height="620" width="1920" />
</div>

  <div align="center">
<img src="https://github.com/Photon3009/Hackmate/assets/100941430/603ac179-040e-485e-be60-8e88fef0fb4c" alt="animated " height="620" width="1920" />
</div>

## Tech Stack
- **Backend**: Appwrite Cloud
  - Authentication
  - Database
  - Storage
  - Functions
  - Real-Time APIs
- **Frontend**: Flutter
  - flutter_bloc State Management
  - Hydrated Bloc for caching strategy
  - Auto Routes for advanced Routing features
  - Automated code generation using build_runner

## Project Architecture
The project relies deeply on the principles laid forward by clean architecture. Refer to the diagram below for a clearer understanding of the structure:

The architecture depends heavily on separation of features into submodules for easy separation of concerns. Each feature is further divided into a data and presentation layer with cubits/blocs acting as middleware between the data and presentation.

  <div align="center">
<img src="https://github.com/Photon3009/Hackmate/assets/100941430/6657127d-163b-4bfb-9fc3-779c0548a042" alt="animated " height="520" width="1920" />
</div>

DRY (Don’t Repeat Yourself) pattern is followed to create reusable components throughout the project that fast-forwarded the development as time progressed.

The app supports multiple environments. Since the app is still in production and I am not going for a public launch, I am using a sandbox environment. The environment can be switched in the app by a long tap on the app name in the login screen.

The app uses Dart linting rules through `analysis_options.yaml` for project-wide conventions. `dart_code_metrics` package is used for advanced linting rules.

The app also has Appwrite exception handling that catches any and all exceptions. A central place for app exceptions provides easy configs with error reporting plugins like Sentry, Firebase Crashlytics, etc.

Apart from this, the project relies on several open-source libraries that are battle-tested and help eliminate boilerplate:
- `djangoflow_app` by Apexive.com
- `djangoflow_app_links` by Apexive.com
- `progress_builder` by Apexive.com
- `pin_code_fields` by Saiful Islam Adar
- `smooth_page_indicator` by codeness.ly

### Authentication
- Google, Phone Auth
- Prefs management for User Survey

### Databases
I created a database called `dev` and specified the ID as `hackmate-dev`. This structure was followed since it follows the convention of name-env. So I can easily configure that in the app by fetching the predefined app name in constants and env from the app state.

I won’t bore you with the schema and everything. Refer to the app code to know more.

I had the following collections:
- `user`: For storing user data, matches, dislikes, likes, match requests, teamId.
- `hackathons`: For storing data related to hackathons. Supports features such as upcoming hackathons through the `upcoming_date` field.
- `chat`: A collection that is used for the purpose of creating a chat collection between two users through an event-based function. More explanation on this in the functions page.
- `banners`: Used for customizing app banners found at the top. Banners can be disabled by setting the `active` field to false.
- `teams`: Teams collection stores the teams created in the app by users and the data of team members like IDs and roles.
- `team_vacancy`: Stores data related to team vacancy posts that can be generated through the app by admin.

Moving on, I also had a strong focus on security and thus all the collections had appropriate data access rules. For chat between two users, I used Appwrite’s document security rules and allowed access only to the two users chatting.

### Storage
I used storage for storing team and user images. I created a bucket called `dev` and specified the ID as `hackmate-dev`. This structure was similar to the database structure for the benefits mentioned above.

### Functions
Cloud Functions were useful in my app for dynamic chat collection creation between two users. You can find the code for the same at `functions/appwrite/chat/functions/createChatCollection` directory in GitHub. I use the Dart runtime and the Appwrite admin SDK for this purpose. The event `databases.*.collections.chat.documents.*.create` was being used to listen to documents being created in the chat collection and trigger the function to create a new collection with a specified schema to store messages between two users.

### Version Control
I used Git and GitHub for local and remote repository management. Various features of Git like add, stash, commit, branches, pull, push, etc., were used throughout the dev lifecycle.

I also made sure to design my custom Git hooks to check code quality and formatting before committing. You can find that under `scripts/git/` directory.

## Challenges Faced

The lack of ability to create collections from the frontend resulted in me landing into trouble as the chat collections between two users required dynamic collection creation. After thoroughly going through the functions docs of Appwrite, I decided to use events-based functions.

Another challenging aspect was to make the chat functionality realtime, but that was easily handled by Appwrite Cloud’s realtime capabilities.

## Future Fixes

After working with Appwrite for most of the functionality in this project, I noticed a significant drawback in its real-time capabilities. Specifically, its real-time subscription through the cloud console frequently disconnects, causing intermittent functionality. For more details, you can refer to this issue on the Appwrite official repository: [Issue #8037](https://github.com/appwrite/appwrite/issues/8037). Therefore, I will either have to deploy my own Appwrite droplet or switch to a different BaaS solution.

---

Feel free to reach out if you have any questions or suggestions!
[My Linkedin](https://www.linkedin.com/in/shivam-verma-1554b9223/)
[My Twitter](https://x.com/photon3009)

**Happy Coding:)**
