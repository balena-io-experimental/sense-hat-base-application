Using the Sense HAT with balena
===============================

Start by downloading [Etcher](https://balena.io/etcher).  You will use Etcher to write balenaOS to an SD card to boot your Raspberry Pi.

You will follow the [getting started guide](https://balena.io/docs/learn/getting-started/raspberrypi3/nodejs/) for the beginning of this project up through the "Deploying code" section.  Specifically,
- [set up an SSH key](https://balena.io/docs/learn/getting-started/raspberrypi3/nodejs/#adding-an-ssh-key)
- [create an application](https://balena.io/docs/learn/getting-started/raspberrypi3/nodejs/#creating-an-application)
- [Add your first device](https://balena.io/docs/learn/getting-started/raspberrypi3/nodejs/#adding-your-first-device) (download balenaOS)
- using Etcher, [create a bootable SD card](https://balena.io/docs/learn/getting-started/raspberrypi3/nodejs/#create-a-bootable-sd-card)
- [set up your device](https://balena.io/docs/learn/getting-started/raspberrypi3/nodejs/#setting-up-your-device)

If you haven't cloned this git repository (i.e. you're reading these instructions on GitHub), do that now by typing this into a terminal:

```
git clone https://github.com/balena-projects/sense-hat-base-application
```

Once the repo is cloned, you’ll change directory into the newly created *sense-hat-base-application* directory:

```
cd sense-hat-base-application
```

Next you'll connect your local copy of the application to balena by running the command shown in the top-right corner of your application page. You can use the clipboard button to copy this line from the balena dashboard page.  (Be sure to copy the `git remote add` line from the top right corner of your application page rather than from here -- it will include your username and application name!)
![balena dashboard](https://user-images.githubusercontent.com/3144447/31838605-8c47e538-b5ab-11e7-9475-aee6978a1776.png)

It looks like this:
```
git remote add balena <USERNAME>@git.balena-cloud.com:<USERNAME>/<APPNAME>.git
```

So now you have set up a reference in your local git repository (the one on your development computer) to the balena application remote repository. So when you push new changes to this remote repository it will get compiled and built on the balena servers and deployed to every device in the application fleet.

Now to deploy this code to all device(s) in the application just run the command:

```
git push balena master
```

You may see a warning that says
>The authenticity of host ‘git.balena-cloud.com (54.165.162.194)’ can’t be established.
ECDSA key fingerprint is SHA256:NfwmqnKId5cx1RWpebbEuuM87bCJbdyhzRnqFES9Nnw.
Are you sure you want to continue connecting (yes/no)?

Type `yes` and hit return to accept. Your machine is asking you to verify the SSH host. You should only see this the first time you connect to balena.

It should only take about two minutes to build your code (and subsequent builds will be quicker because of caching). You'll know your code has been successfully compiled and built when our friendly unicorn mascot appears in your terminal:

![unicorn](https://user-images.githubusercontent.com/3144447/31838641-b8fca76c-b5ab-11e7-92ee-dd49a0652bac.png)

This means your code is safely built and stored on our image registry.

Your application will now be downloaded and executed by the device you have connected in your application fleet. This may take a few minutes, and you can watch the status of the download in your application dashboard.  Optionally, you can speed this up for subsequent builds using balena's [container deltas](https://balena.io/docs/learn/deploy/delta/) if you want!

You’ll know the code is deployed when the device changes from "Downloading" to "Online" in the dashboard, and you’ll know it’s running on the device when one of the LEDs on the Sense HAT lights up. You'll be able to move the light with the Sense HAT joystick.

### Ready to go beyond a single lit LED?
The Sense HAT measures temperature, humidity, pressure, and orientation, which you can show on the LED matrix. You can find more ideas of what to do with the HAT in [this library](https://github.com/balena-playground/node-sense-hat).

You can also use the Sense HAT in other languages, such as [Python](http://pythonhosted.org/sense-hat/).
