Using the Sense HAT with balena
===============================

Start by downloading [Etcher](https://balena.io/etcher).  You will use Etcher to write balenaOS to an SD card to boot your Raspberry Pi.

You will follow the [getting started guide](https://balena.io/docs/learn/getting-started/raspberrypi3/nodejs/) for the beginning of this project up through the "Deploying code" section.  Specifically,
- [create a Fleet](https://balena.io/docs/learn/getting-started/raspberrypi3/nodejs/#create-a-fleet)
- [Add your first device](https://balena.io/docs/learn/getting-started/raspberrypi3/nodejs/#add-your-first-device) (download balenaOS)
- using Etcher, [create a bootable SD card](https://www.balena.io/docs/learn/getting-started/raspberrypi3/nodejs/#provision-device)
- [Install the balena CLI](https://www.balena.io/docs/learn/getting-started/raspberrypi3/nodejs/#install-the-balena-cli)

If you haven't cloned this git repository (i.e. you're reading these instructions on GitHub), do that now by typing this into a terminal:

```
git clone https://github.com/balena-io-projects/sense-hat-base-application
```

Once the repo is cloned, you’ll change directory into the newly created *sense-hat-base-application* directory:

```
cd sense-hat-base-application
```

Next we'll do a `balena push` to take the contents of the directory that you have cloned locally, and put them onto your device.  This consists of sending your contents up to balenaCloud to be built, and then balenaCloud will send the resulting built container down to your device. From inside that *sense-hat-base-application* directory run:

`balena push YourFleetNameYouCreatedAbove`

The build will start running, and look something like this:

```
[main]     Successfully built d5f1de77fad3
[Info]     Uploading images
[Success]  Successfully uploaded images
[Success]  Release successfully created!
[Info]     Release: f4e3925bf7d32226365225e1b7201b90 (id: 89693)
[Info]     ┌─────────┬────────────┬────────────┐
[Info]     │ Service │ Image Size │ Build Time │
[Info]     ├─────────┼────────────┼────────────┤
[Info]     │ main    │ 205.13 MB  │ 1 second   │
[Info]     └─────────┴────────────┴────────────┘
[Info]     Build finished in 7 seconds
                \
                 \
                  \\
                   \\
                    >\/7
                _.-(6'  \
               (=___._/` \
                    )  \ |
                   /   / |
                  /    > /
                 j    < _\
             _.-' :      ``.
             \ r=._\        `.
            <`\\_  \         .`-.
             \ r-7  `-. ._  ' .  `\
              \`,      `-.`7  7)   )
               \/         \|  \'  / `-._
                          ||    .'
                           \\  (
                            >\  >
                        ,.-' >.'
                       <.'_.''
                         <'
```

This means your code is safely built and stored on our image registry.

Your container will now be downloaded and run by the device you have provisioned in your fleet. This may take a few minutes, and you can watch the status of the download on the device page of the dashboard. It should look a bit like this:
![balena dashboard](https://www.balena.io/docs/img/common/device/download-progress.png)

You’ll know the code is deployed when the device changes from "Downloading" to "Online" in the dashboard, and you’ll know it’s running on the device when one of the LEDs on the Sense HAT lights up. You'll be able to move the light with the Sense HAT joystick.

### Ready to go beyond a single lit LED?
The Sense HAT measures temperature, humidity, pressure, and orientation, which you can show on the LED matrix. You can find more ideas of what to do with the HAT in [this library](https://github.com/balena-io-playground/node-sense-hat).

You can also use the Sense HAT in other languages, such as [Python](http://pythonhosted.org/sense-hat/).
