# Biscuit Link - Kitchen

The all-in-one development box for Biscuit Link projects running on top of Vagrant, inspired by Laravel's [Homestead](https://laravel.com/docs/homestead).

## Requirements

- You need [Vagrant](https://www.vagrantup.com/) on your machine.
- We recommend [Virtual Box 6.1](https://www.virtualbox.org/) as the provider.


---
# TODOs
- Create kitchen.yaml configuration file.
- List available installed services.
- kitchen up command shortcut
- Getting started documents.
- Kitchen documentation on biscuit.link

---
# OLD DOCs

:warning: These docs are being rewritten to match the new version.

## Getting Started

Follow the following steps in order to get your box running as soon as possible:

### 1. Create the folder structure

This box will create 2 symbolic links with two folders which are relative to your Biscuit Link project, you are advised to create the following folder structure prior to booting up the Vagrant box:

```text
- Project Name/
  - vagrant-box/
  - website/
  - config/
```

* **vagrant-box/** is where this Vagrant box goes into.
* **website/** is where your Biscuit Link project goes into. It MUST be named *website*, if you wish to change the naming please edit the `Vagrantfile`.
* **config/** is an optional folder where you may want to include configuration for your project which can be loaded in when your application boots up.

### 2. Boot-up your box

Once your folder structure is done all you gotta do is `vagrant up` and your box should install all the needed dependencies.

### 3. Composer Install

Biscuit Link has been written from the ground up to support the latest PHP technologies, therefore, we use [Composer](https://getcomposer.org/). Composer is automatically installed when your box is set-up, however, your project does not automatically fetch all the dependencies.

#### 3.1 SSH into Vagrant

Inside your Vagrant box's folder run `vagrant ssh` which should now bring up the shell for your box.

#### 3.2 Run `composer install`

Your website folder is in `/var/www/website` (see step 1), change into the folder using `cd /var/www/website` and then run `composer install`. The dependencies should now be built successfully!

### 4. Check your development site

The box will have now started to run a Nginx Web Server at [http://localhost:4848](http://localhost:4848). If no errors display then you are all set to develop!

If even after these steps you can't seem to get your box running, head over to the [Issues](https://github.com/biscuit-link/vagrant-box/issues) and let us know why. You are also encouraged to improve these tutorial steps, we welcome [Pull Requests](https://github.com/biscuit-link/vagrant-box/pulls) from anyone.

## Specifications

Here is a list of the specifications for the box:

* **Operating System:** Ubuntu 16.04 (ubuntu/xenial64)[https://app.vagrantup.com/ubuntu/boxes/xenial64]
* **Installed Packages:**
    * Git
    * Nginx
    * PHP 7.0 (`php7.0-fpm`) including the following extensions:
        * php7.0-cli
        * php7.0-zip
        * php-pear
        * php7.0-curl
    * Composer