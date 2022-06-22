---
layout: post
title: "How to Access UCI's OpenLab (via SSH or JupyterHub)"
subtitle: "Two different ways to access UCI's OpenLab, whether you prefer to connect via the terminal or through a command-line-free, user-friendly GUI."
categories: [tutorial]
courses: [ICS-33, CS-141]
image: assets/images/openlab_tutorial/image.png
youtube: "https://www.youtube.com/embed/UJ2UBCc3vZg"
author: brooke
permalink: "/blog/how-to-ssh-into-uci-openlab.html"
---

In this guide, I will walk you through a few different ways you can access UCI's OpenLab, which is essentially the campus's "remote computer lab." When I was an undergrad, this process always overwhelmed me (I barely knew how to program, how was I supposed to navigate the terminal and all this SSH business?!) Even now with several years of software engineering experience I always forget the steps for how to do this. So, I'm writing this for my students in ICS 33 this quarter, and also as a reminder for myself because I definitely *will* forget if I don't put it somewhere. 🤣

The included YouTube video above walks you through the <a href="#prerequisites">Prerequisites</a>, as well as <a href="#access-openlab-via-ssh">the SSH method</a> to connect to OpenLab. In this post, I've also included a <a href="#access-a-fully-remote-desktop-via-jupyterhub">more user-friendly method to connect to OpenLab</a> which will especially be relevant for my ICS 33 students. All the <a href="#steps-1">terminal commands</a> and <a href="#required-tools">tools</a> discussed in the video are also included in this post for convenience. 

So, without further ado, lets jump into the tutorial! 

----------

# Prerequisites
## ICS Login
The very first thing you need to do is to make sure that you actually have an ICS login. This is actually distinct from your @UCI.edu login.

If your major falls under the Bren School of Information and Computer Sciences, then you already have an account (and it should be the same as your UCInetid). If that's you, then skip to the next section.  

<figure>
  <img class="rounded border-brooke"
  src="/assets/images/openlab_tutorial/ics_login_page.png">
  <figcaption>First, visit the <a href="https://support.ics.uci.edu/auth/">ICS page</a> to register for a username if you don't already have one.</figcaption>
</figure>

If you're not sure if you already have one or not, just type in your student ID in the form. 
<figure>
  <img class="rounded border-brooke"
  src="/assets/images/openlab_tutorial/ics_error.png">
  <figcaption>Error message that appeared for me since I already had an ICS login.</figcaption>
</figure>

If you don't have one yet, then fill out the prompts on the form. According to <a href="https://www.ics.uci.edu/~lab/students/acct_activate.php#:~:text=Go%20to%20https%3A%2F%2Fsupport,Follow%20the%20on%2Dscreen%20prompts">this page</a>, your account should be made within 2 hours, and should be the same name as your regular UCInetid.

## Required Tools
### VPN
Next, you're going to need a way to access the VPN. It allows you to connect to the UCI network when you're not on campus. This in and of itself is not enough to get on OpenLab, but its a prerequisite step (we'll talk about how to do this below).

To get on the VPN, you need to download some software. There's some really good UCI-made articles on this step, so I won't re-write this all out. 

<figure>
  <img class="rounded border-brooke"
  src="/assets/images/openlab_tutorial/vpn.png">
  <figcaption>Follow the steps on the <a href="https://uci.service-now.com/sp?id=kb_article_view&sysparm_article=KB0012170&sys_kb_id=cfb8e07b1b700d9c4d61baeedc4bcb2f&spa=1">UCI ServiceNow page</a>  to download the VPN software.</figcaption>
</figure>

After following these steps, you should have the Cisco AnyConnect VPN client (or equivalent, if it recommended a different one for your OS) downloaded to your machine. 

### Terminal
Finally, you will likely want to have a terminal. If you're just doing Jupyter Notebooks, its not 100% needed, but you will likely need the terminal to transfer files remotely. Plus, its a good tool to familiarize yourself with for your Computer Science education, anyways, and you will almost definitely be using it in your courses. 

If you're using a Mac, you can use the built-in Terminal application (Linux will also have a built-in one you can use). I personally use <a href="https://iterm2.com/">iTerm2</a> and I really love it because of the extra functionality such as split-panes and additional appearance customizations. 

I haven't been regularly using a Windows-based machine in a few years, but I enjoyed using the beta of <a href="https://docs.microsoft.com/en-us/windows/terminal/">Windows Terminal</a>, which looks like now there is a full version available for everyone. I liked using this much better than PuTTY and Windows Git Bash. When in doubt, you can always ask your instructor what they'd recommend. 

-------
# OpenLab Tutorial (Two Different Ways)
Now that the prerequisites are out of the way, lets jump into the actual tutorial! Below, I have provided two different methods of accessing OpenLab, depending on what your needs are. <a href="#access-a-fully-remote-desktop-via-jupyterhub">The first way</a> gives you a full GUI and remote desktop experience. <a href="#access-openlab-via-ssh">The second way</a> I'd recommend for more advanced users or students in upper-division classes, which accesses OpenLab through the terminal using SSH. This is personally what I use, because its a bit snappier, but newer students will likely prefer the first method because its more user-friendly. 

--------

# Access a Fully Remote Desktop via JupyterHub
This part of the tutorial will cover how to access <a href="https://swiki.ics.uci.edu/doku.php/virtual_environments:jupyterhub">UCI's JupyterHub</a>. This is the way I'd recommend for my ICS 33 students, or others in lower-divison courses. 

## Steps
1. Open Cisco AnyConnect and connect to the VPN (<a href="https://uci.service-now.com/sp?id=kb_article_view&sysparm_article=KB0012170&sys_kb_id=cfb8e07b1b700d9c4d61baeedc4bcb2f&spa=1">documented in this guide</a>, or watch the first part of <a href="#video">my video</a>). 
2. Go to the browser, and type in <a href="https://hub.ics.uci.edu/">https://hub.ics.uci.edu/</a>

And you're in! 

From there, you can simply navigate over to Jupyter Notebooks to start working on your programming assignment. 
<figure>
<div class="row">
<div class="col-6">
  <img class="rounded border-brooke"
  src="/assets/images/openlab_tutorial/open_jupyter.png"
  alt="">
  </div>
  <div class="col-6">
    <img class="rounded border-brooke"
    src="/assets/images/openlab_tutorial/jupyter.png"
    alt="">
    </div>
    </div>
  <figcaption>Navigate to <a href="https://hub.ics.uci.edu/">hub.ics.uci.edu</a>. Then, click on Python 3 (outlined in red) to open Jupyter Notebooks. Result should look like what I have on the right. </figcaption>
</figure>

Or, you can even use the full desktop by clicking on the "Desktop" icon. This could be useful if you also want to interact with the Terminal or need to go to the browser to download your assignments from Canvas.

<figure>
  <img class="rounded border-brooke"
  src="/assets/images/openlab_tutorial/full_desktop.png">
  <figcaption>Full desktop, with Terminal and Firefox, that you can access via JupyterHub from your browser. Its a bit laggy, but great if you need to download something from Canvas or use the terminal.</figcaption>
</figure>

<a href="https://swiki.ics.uci.edu/doku.php/virtual_environments:jupyterhub">This article</a> has some additional resources and how-to's for more in-depth usage if something you need is not covered here. 

Although using the JupyterHub is probably a bit less snappy than it would be in the physical ICS labs, it is really user-friendly especially for newer students who are still getting used to programming, so it's a fair trade for all the functionality you get. 

---------

# Access OpenLab via SSH
For students in upper-division classes, or those conducting research in a lab on campus, connecting to OpenLab through the Terminal is preferred. Its much quicker, and by learning a few simple remote file copy commands, you can really save yourself a lot of time. 

For this method, I made a YouTube video that explains all these same steps, so if you'd prefer you can watch that. I just outlined the same steps below for convenience and for copy-pasting the commands easily. 

<figure id="video">
<iframe  class="rounded border-brooke" style="width:99%;" height="450" src="https://www.youtube.com/embed/UJ2UBCc3vZg" frameborder="0" allowfullscreen></iframe>
  <figcaption>Tutorial video for accessing OpenLab via SSH. Terminal commands listed below.</figcaption>
</figure>

## Steps
1. Open Cisco AnyConnect and connect to the VPN (<a href="https://uci.service-now.com/sp?id=kb_article_view&sysparm_article=KB0012170&sys_kb_id=cfb8e07b1b700d9c4d61baeedc4bcb2f&spa=1">documented in this guide</a>, or watch video above for example). 
    - Note: If you want to circumvent this step in the future, see <a href="https://gist.github.com/ChaseC99/9506cf219ca33c60693ea4c4396a4c19#how-to-add-an-ssh-key-to-openlab">this guide</a> on how to add an SSH Key to OpenLab. However, if you're trying to do this for on-campus research, this won't work because you'll still need to connect to the VPN (I tried 😭).
2. Go to the terminal, and type in `ssh UCInetid@openlab.ics.uci.edu` (replace `UCInetid` with your ID.)
    - Note: if you need to connect to a specific server, for instance, `circinus-37`, then use `ssh UCInetid@circinus-37.ics.uci.edu`
3. Type in your ICS password (might not necessarily be the same as your UCInetid password). 
4. If you see a terminal window that looks like mine below, you successfully got in! 

<figure>
  <img class="rounded border-brooke"
  src="/assets/images/openlab_tutorial/terminal.png">
  <figcaption>You should see a message similar to this if you successfully connected to OpenLab. The <code>@circinus-37</code> seen in mine will vary based on which specific server you got connected to. </figcaption>
</figure>

## Remotely transfer files 
Now that you're connected, you might want to remotely transfer files to and from your local machine to OpenLab. I give the full demo in the video so if you'd like to see that in-action check that out. Below are the commands: 

- Copy single file from local to remote (run in your local terminal):

```scp myfile.txt UCINetID@openlab.ics.uci.edu:/remote/folder/```
- Copy single file from remote to local (run in your local terminal):

```scp UCINetID@openlab.ics.uci.edu:/remote/folder/remote.txt local.txt```
- Copy multiple files from local to remote.

```scp myfile1.txt myfile2.txt UCINetID@openlab.ics.uci.edu:/remote/folder/```
- Copy all files from local to remote using scp. 

```scp * UCINetID@openlab.ics.uci.edu:/remote/folder/```
- Copy all files and folders recursively from local to remote.

```scp -r * UCINetID@openlab.ics.uci.edu:/remote/folder/```


For more information, search "`scp` command (linux)" on Google. 

----------
# Conclusion 

## A Case for the Physical Computer Labs
Despite the length and depth of this tutorial, OpenLab is no replacement for going to the physical computer labs. Yes, I know, it's smelly, it's a long walk, it's dark. The keyboard is sticky for god knows what reason. When I was an undergraduate and one of the few women in my introductory CS courses, it could feel like the whole lab was watching my every move just *waiting* for me to mess up or ask some dumb question. I viscerally remember some of my first experiences in the CS lab at UCSD, I felt so embarrassed to ask the most basic question of them all---"where is the Terminal?" It can feel easier to hide in your house and do your programming there instead, especially now in a post-Covid world where that has become a lot more socially acceptable. 

But, for all the flaws of the labs, it's also where a lot of learning takes place. For one, its usually where office hours or tutoring hours take place. I know for me, I would not have passed Basic Data Structures without the patient assistance of the tutors in the labs. In your earlier classes, you really need to make an effort (as hard as it is) to get up and go to the labs so you can get that precious help. As you get more experienced in your upper-division courses, you can gradually wean yourself off the labs and work more frequently from the comfort of your home (and you'll have really earned it!)
 
The labs also don't *have* to be as scary as it was for me in my early years. Although it *sucks* feeling like one of the only women/person-who-looks-like-you in your Computer Science class, it can become in and of itself a way to bond with the few other marginalized people in the class because there is that instant sense of understanding and camaraderie from that experience. Find some other folks, form a study group and some sense of community. Form a ritual---maybe you all grab lunch together after class and then afterwards lug your way over to the labs together to grind out your programming assignments. You'll form some study buddies, and you'll be much more likely to stay on top of your assignments and get the help you need early and often. In a few years you all will laugh about your times in the CS labs (I remember one time sneaking some beer in paper bags into the labs to attempt to make our homework more fun, don't try this, kids). Some of the buddies I made in my intro CS classes ended up being my friends throughout my whole college experience. 

So, hopefully this tutorial will help you with connecting to OpenLab for times that you've got the sniffles or want to work on your assignment outside of lab hours, but still plan on draggin' your butt over to the labs for most of the quarter! 

Please let me know if this tutorial helped, or if there is any additional content you'd like to see covered next time! 👋