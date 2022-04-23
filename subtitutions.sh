#!/usr/bin/bash

# command substitution
var_date=`date`
echo $var_date
echo ${var_date}

up_and_users=`uptime; who | wc -l`
echo $up_and_users


# Variable substitution
# Substitute value 
name="Johannes"
echo ${name}

# If var is null|unset , takes the second value "like default". var doesn't change
echo ${guessing_name:-default_name}
echo ${guessing_name}

# If var is null|unset, var is set with the second value
echo ${guessing_age:=25} 
echo ${guessing_age}

# If var is null|unset msg is printed to stderr.
#echo ${any_news:?msg_reply_stderr}
echo ${any_news}

# If var is set, second arg is taken instead of var. The value of var does not change
echo ${name:+what_is_this}
echo ${name}
