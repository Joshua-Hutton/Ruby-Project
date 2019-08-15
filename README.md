<h1>Ruby Project</h1>

<h3> The Project </h3>
For this project I was asked to create a small side project for something I was interested in by a company that I applied to as a sort of coding test. The requirements laid out were:

- Ruby on Rails
- PostgreSQL
- User authentication
- (Integration with React is a bonus!)

This was requested of me with the knowledge that I have not worked with Ruby before and would have to learn it. Although there was no time limit given for completion, I gave myself the time frame of a week to get it done. I also opted to not include React in the project. Although it is a framework I am interested in learning, I have not used it at the time of writing and was concerned what I would be able to produce in the time I allotted myself while trying to learn two new frameworks.

The application I built takes in data from the user of transactions with the fields of category, location, amount, and date. The general idea is to give you a look at where you spend your money. On the home index it takes all the database entries from the currently logged in user and shows a column graph as well as a pie chart based on category. The categories being Food, Housing, Entertainment, Groceries, Transportation, Clothing, Medical, and Other. It then lists all of that user’s entries and gives the total spent. This data can then be narrowed down by month.

There are two additional pages that list all of that user’s entries. The first called category and the second location. They both function similarly to each other and allow the user to narrow down the results of the data by their respective names. Category offers the option to look at all data of a certain category and further narrow results down by month. Location does the same but by location. I set it up this way because of the way I originally learned to write a search method within Ruby on Rails. With what I now know I would rework the application to offer all of this on the home index to simplify the app but I ran out of time to refactor the code.

I developed this project with the following:
<ul>
  <li>
    OS: Ubuntu 18.04
  </li>
  <li>
    IDE/text editor: Visual Studio Code
  </li>
  <li>
    version control: git
  </li>
  <li>
    Ruby 2.6.3p62
  </li>
  <li>
    Rails 6.0.0.rc2
  </li>
  <li>
    Bootstrap 4.3.1
  </li>
  <li>
    chartkick 3.2.1
  </li>
  <li>
    PostgreSQL 10.10
  </li>
</ul>
Along with other dependencies listed in the gemfile, these are just the ones I specifically added.

<h3>Why Ubuntu</h3>

I like Ubuntu and use it for some python projects but, I typically work in a windows environment and planned to do so for this project as well. I started trying to use the rails installer for windows to start the project, but I was having trouble trying to get the applications to build. Most trouble-shooting guides I could find seemed to be either for Mac or Linux and most of the installation options in the rails documentation were for Linux. I then tried to get the program running in the Linux distro I had already as a boot option on my computer called Pop_OS. This is a distro build off of Ubuntu that I had been trying for the past couple of weeks. I could not get it to work on Pop either but this time I was getting more specific errors involving Yarn. After playing with that for a while, I decided to go back to Ubuntu because it is the Linux distro I have the most experience with. I installed rails, created the project, created the database, started the server and there it was - the Ruby on Rails default server page. After a day and a half fighting with Windows and Pop_os, I got the app started on Ubuntu in 20 minutes including making the installation USB and installing Ubuntu. So I stuck with it through the project.
