Using the Sense HAT in resin.io
===============================

Start by downloading [Etcher](https://etcher.io).  You will use Etcher to write resinOS to an SD card to boot your Raspberry Pi.

You will follow the [getting started guide](https://docs.resin.io/raspberrypi3/nodejs/getting-started/) for the beginning of this project up through the "Deploying code" section.  Specifically,
- [set up an SSH key](https://docs.resin.io/raspberrypi3/nodejs/getting-started/#adding-an-ssh-key)
- [create an application](https://docs.resin.io/raspberrypi3/nodejs/getting-started/#creating-an-application)
- [Add your first device](https://docs.resin.io/raspberrypi3/nodejs/getting-started/#adding-your-first-device) (download resinOS)
- using Etcher, [create a bootable SD card](https://docs.resin.io/raspberrypi3/nodejs/getting-started/#create-a-bootable-sd-card)
- [set up your device](https://docs.resin.io/raspberrypi3/nodejs/getting-started/#setting-up-your-device)

If you haven't cloned this git repository (i.e. you're reading these instructions on GitHub), do that now by typing this into a terminal:

```
git clone https://github.com/resin-io-projects/sense-hat-base-application
```

Once the repo is cloned, you’ll change directory into the newly created *sense-hat-base-application* directory:

```
cd sense-hat-base-application
```

Next you'll connect your local copy of the application to resin by running the command shown in the top-right corner of your application page. You can use the clipboard button to copy this line from the resin.io dashboard page.  (Be sure to copy the `git remote add` line from the top right corner of your application page rather than from here -- it will include your username and application name!)
![resin.io dashboard](https://user-images.githubusercontent.com/3144447/31838605-8c47e538-b5ab-11e7-9475-aee6978a1776.png)

It looks like this:
```
git remote add resin <USERNAME>@git.resin.io:<USERNAME>/<APPNAME>.git
```

So now you have set up a reference in your local git repository (the one on your development computer) to the resin.io application remote repository. So when you push new changes to this remote repository it will get compiled and built on the resin.io servers and deployed to every device in the application fleet.

Now to deploy this code to all device(s) in the application just run the command:

```
git push resin master
```

It should only take about two minutes to build your code (and subsequent builds will be quicker because of caching). You'll know your code has been successfully compiled and built when our friendly unicorn mascot appears in your terminal:

![unicorn](https://user-images.githubusercontent.com/3144447/31838641-b8fca76c-b5ab-11e7-92ee-dd49a0652bac.png)

This means your code is safely built and stored on our image registry.

Your application will now be downloaded and executed by the device you have connected in your application fleet. This may take a few minutes, and you can watch the status of the download in your application dashboard.  Optionally, you can speed this up for subsequent builds using resin.io's [container deltas](https://docs.resin.io/runtime/delta/) if you want!

You’ll know the code is deployed when the device changes from "Downloading" to "Online" in the dashboard, and you’ll know it’s running on the device when one of the LEDs on the Sense HAT lights up.

If you’d like to use the other sensors on the Sense HAT, check out [this library](https://github.com/resin-io-playground/node-sense-hat).

You can also use the Sense HAT in other languages, such as [Python](http://pythonhosted.org/sense-hat/).
