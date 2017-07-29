# Biscuit Link - Vagrant Box

The officially maintained Vagrant Box for running a [Biscuit Link](https://biscuit.link) development environment.

## Requirements

You must have [Vagrant](https://www.vagrantup.com/intro/index.html) and [Virtual Box](https://www.virtualbox.org/wiki/Downloads) installed on your machine in order to be able to run this box.

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

Biscuit Link has been written from the ground up to support the latest PHP technologies, therefore, we use Composer. Composer is automatically installed when your box is set-up, however, your project does not automatically fetch all the dependencies.

#### 3.1 SSH into Vagrant

Inside your Vagrant box's folder run `vagrant ssh` which should now bring up the shell for your box.

#### 3.2 Run `composer install`

Your website folder is in `/var/www/website` (see step 1), change into the folder using `cd /var/www/website` and then run `composer install`.

The dependencies should now be built successfully!


## Specifications



