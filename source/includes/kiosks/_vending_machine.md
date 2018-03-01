# Vending Machine

## Hardware

| Item | Qty | Purpose |
| ---- | --- | ------- |
| <a href='http://thevendingcenter.com/'>AMS Slim Gem (G8624S3C#163)</a> | 1 | The vending machine itself. |	
| <a href='http://thevendingcenter.com/'>Snack trays, deeper spirals</a> | 1 |
| <a href='http://www.upstatenetworks.com/uniCart/catalog/product_info.php?products_id=34'>Upstate Networks PC2ASD</a> | 1 | Allows vending machine to receive RS232 commands. |
| <a href='https://www.get-console.com/shop/en/airconsole-mini-20/112-airconsole-20-mini.html'>Airconsole Mini</a> | 1 | Connects the vending machine to the network. |
| iPad (9.7" iPad or iPad Air) | 1 | Main interface |
| <a href='https://www.amazon.com/DYMO-LabelWriter-Thermal-Printer-1750283/dp/B0027JIIKQ'>Dymo printer (LabelWriter 450 Turbo)</a> | 1 | Printer for badge labels |
| <a href='https://www.apple.com/airport-express/'>Apple Airport router (Express)</a> | 1 | Connects the ipad and vending machine to the network |
| <a href='https://www.amazon.com/gp/product/B01F2O3CKI'>iPad Security Mount</a> | 1 | Used to hold the iPad |
| <a href='https://www.amazon.com/gp/product/B01ACOR2PE'>Tilting wall bracket</a> | 1 | Used to attach the ipad to the wooden panel and to allow the ipad to tilt up and down for easy viewing |
| <a href='https://www.bestbuy.com/site/wemo-wemo-insight-plug-white-gray/2300063.p'>Wemo power switch</a> | 1 | Allows us to hard reset everything remotely |
| Generic power strip | 1 |  |
| <a href='https://www.amazon.com/gp/product/B002HVYVNC'>Power cord to PC connector adapter</a> | 1 | Connects the power strip to the internal vending machine power |
| 3-wire 8' extension cord | 2 | Used to get power from the main power strip to the door assembly and interior assembly |  
| 50' ethernet cable | 1 | Used to connect the router to the network |
| 25' ethernet cable | 1 | Used to connect the router to the airconsole mini |
| 34" x 7" x 1/2" wooden panel | 1 | Used to cover cavity from original vending machine controls |
| 1" velcro strips | 1 | Used throughout assembly | 
| 1" hinge | 2 | Used to hold the printer shelf to the wooden panel |
| 12" small chain | 1 | Used to keep the printer shelf at the appropriate angle |
| Small hook | 1 | Used to attach the chain to the wooden panel |
| Small screw eyehook | 1 | Used to attach the chain to the printer shelf |

## Graphics

Each vending machine has an opening where the original control hardware was located. This opening is 6.5" wide by 29" tall.

If the kiosk hardware is housed separately from the vending machine, then a rigid board with graphics must be created to close the opening.

If the kiosk hardware is housed inside the vending machine, then the ipad will take up some of the opening space, but a rigid board with graphics must be created to close the rest of the opening.

## Scrubs Inventory

Once Scrubs are purchased in bulk, they need to be unpackaged, folded into the correct dimensions, and put into the appropriately sized bag in order to fit into the vending machine. Optionally, the bag then needs to be stickered with the company's logo.

<a href='https://www.amazon.com/gp/product/B00JKTSINS'>Matte-finishe, white poly mailer bags 6" x 9"</a>

### Wiring Diagram

<img src='images/vending_machine_wiring.png' />

## Setup

Help videos:

* <a href='https://youtu.be/AbkOXM3i-ng'>Before setup, general overview</a>
* <a href='https://youtu.be/4_lpngqCIdY'>After removing normal vending machine controls</a>
* <a href='https://youtu.be/6S2AnRL4NfQ'>After setup, finished wiring and mounting hardware</a>
* <a href='https://youtu.be/1bKZ099j6Mg'>Special note about power to vending machine</a>

Instructions:

1. Remove uneccesary parts.
  * Remove the plastic exterior piece with the number pad and anything attached to it except the small display and number pad board (both of which are attached via ribbon cables to the control board). Leave the display and number pad hanging for the time being.
  * Remove the metal change mechanism located on the inside of the machine. This will not be used and just takes up room.
  * Remove the interior metal door (despite what the video shows). This door is no longer necessary since we're using a wood panel to cover the hole left by the removal of the normal vending machine controls.
     - Unplug the two connectors that go to the switch at the top of the door.
     - Remove the door and hinges.
     - Remove the switch from the door.
     - Use a rubber band to permanently keep the switch in a closed position.
     - Reattach the two connectors to the switch and leave hanging.  
2. Replace main power strip (<a href='https://youtu.be/1bKZ099j6Mg'>video</a>).
  * Remove the power cable that enters the back of the vending machine. 
     - At the bottom of the machine on the inside, unplug the cable from the vending machine. This should be a PC connector.
     - Remove both the interior and exterior panels that keep the power cable in place.
     - Remove the power cable completely.
  * Insert the new power strip into the open hole where the previous power strip was.
  * Connect the power strip to the vending machine with the PC to power cord connector.
  * Plug the power strip into the wall.
  * Turn on the vending machine to verify power works.
3. Attach shelf to wooden panel.
  * Screw one half of both 1" hinges to the wooden shelf. 
  * Locate the wooden shelf so that the printer prints out badges through the slot easily.
  * Connect the other half of both 1" hinges to the wooden panel.
  * From the interior of the door looking at the wooden shelf, screw the small eyehook into the back right side of the shelf.
  * From the interior of the door looking at the wooden shelf, screw the small hook into the wooden panel roughly 10-12" above the shelf.
  * Place the dymo printer on the shelf and verify badges exit the printer into the slot correctly.
  * Connect the chain from the eyehook on the shelf to the hook on the wooden panel.
4. Attach wooden panel to door.
  * Cut 34" velcro strip, cut vertically in half creating two 1/2" strips of velcro.
  * Attach one half of velcro strips to left and right sides of the wooden panel on the opposite side of the printer shelf.
  * Attach other half of velcro strips to the interior of door just outside the left and right sides of the hole.
  * Press wooden panel to hole so the velcro secures into place.
5. Mount the airport express.
  * Below the wooden panel on the interior of the door, locate the airport express so that cables can exit the back of the router from the left side.
  * Attach velcro to the airport express and press onto the metal.
6. Mount the door extension cord.
  * Locate the end of the extension cord just above the change assembly at the bottom of the door.
  * Attach velcro to the head of the extension cord and press onto the metal.
7. Attach ethernet cables.
  * Plug the 50' ethernet cable into the WAN side of the airport express.
  * Plug the 25' ethernet cable into the LAN side of the airport express.
  * Run the 50' ethernet cable down the bottom of the door through to the bottom of the vending machine and out the back of the vending machine with the power strip cord.
  * Run the 25' ethernet cable down the bottom of the door to the left cavity of the vending machine then through the small opening at the bottom of the machine to right cavity of the vending machine.
8. Run power to the right cavity of the vending machine.
  * Inside the right cavity of the vending machine, locate the hole through which all the cables from the trays pass.
  * Drop the power side of the extension cord down through this hole, it should drop all the way to the bottom of the vending machine where the main power strip is.
  * Plug the extension cord into the power strip.
  * Leave the plug side of the extension cord just hanging through the hole. It's neat as is and doesn't require mounting.
9. Test the tray spirals.
  * Turn the vending machine on using the switch located inside the right cavity.
  * Using the number pad hanging inside the right cavity, press one of the numbers on the trays.
  * Verify that the spiral turns.
  * If the spiral turns, turn off the vending machine and remove the number pad and ribbon cable from the control board.
10. Mount the right cavity hardware.
  * Take the display that's hanging inside the cavitory and mount to the top, back of the cavity using velcro strips.
  * Remove the mounting screws from the PC2ASD board.
  * Mount the PC2ASD board to the left side of the cavity making sure to use plenty of velcro strips to ensure that no metal touches the metal of the vending machine.
  * Connect the PC2ASD board to the main AMS control board using the number pad ribbon cable.
  * Connect the airconsole mini to the PC2ASD board using the USB cable.
  * Mount the airconsole mino under the PC2ASD board using velcro strips.
  * Connect the ethernet cable that was previously run from the airport express to the airconsole mini.
  
## Airport Express

The airport express router connects all of the components within the kiosk and vending machine. It needs to be configured with a known subnet and WIFI name.

1. Open the Airport Utility app.
2. Edit the airport express router for the kiosk.
2. Configure DCHP to serve DCHP addresses from `10.0.1.50` to `10.0.1.200`.
3. Change the WIFI name to `RepconnexKiosk<kiosk_id>`. (Example: RepconnexKiosk121)
4. Change the WIFI password to our known password.

## Airconsole Mini

The airconsole mini acts as an interface between the network and the Upstate board, allowing us to send RS232 commands through the network.

Out of the box, the airconsole mini is configured with a `196.168` IP address which needs to be changed.

1. Open Airport Utility and edit the kiosk router.
2. Under the "Internet" tab, configure DHCP to serve addresses from `192.168.10.50` to `192.168.10.200`.
3. Using a browser, open the airconsole mini at `http://192.168.10.1`.
4. Under the "LAN" tab:
 * Turn off DHCP.
 * Change IP address: `10.0.1.10`
 * Change router: `10.0.1.1`
 * Change subnet mask: `255.255.255.0`
 * Apply settings.
5. Open Airport Utility and edit the kiosk router again.
6. Under the "Internet" tab, configure DHCP to serve addresses from `10.0.1.50` to `10.0.1.200`.
7. Open `http://10.0.1.10` in the browser to confirm the airconsole mini has the correct address.

## "Free Vend" mode

The vending machine needs to be put into "Free Vend" mode. This mode allows the vending machine to vend any spiral for which is receives a command.

1. Plug in number pad to control board (or use the ipad app).
2. Open door hinge switch.
3. Press service mode button to enter service mode.
4. Press “#” to scroll through menu until “FREE VEND” is reached.
5. Press “1” to VIEW / EDIT and then to toggle between Y and N.
6. Press “#” to Save the setting and exit.
7. Close door hinge switch.
