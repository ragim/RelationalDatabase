<?php

/**
 * Created by PhpStorm.
 * User: ragim
 * Date: 06/04/2016
 * Time: 18:56
 */
class Student
{
    public $name, $phone, $email, $bday, $group, $class, $ID;

    /**
     * Student constructor.
     * @param $name
     * @param $phone
     * @param $email
     * @param $bday
     * @param $group
     * @param $class
     */
    public function __construct($ID,$name, $phone, $email, $bday, $group, $class)
    {
        $this->ID= $ID;
        $this->name = $name;
        $this->phone = $phone;
        $this->email = $email;
        $this->bday = $bday;
        $this->group = $group;
        $this->class = $class;
    }

    /**
     * @return mixed
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * @return mixed
     */
    public function getPhone()
    {
        return $this->phone;
    }

    /**
     * @return mixed
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * @return mixed
     */
    public function getBday()
    {
        return $this->bday;
    }

    /**
     * @return mixed
     */
    public function getGroup()
    {
        return $this->group;
    }

    /**
     * @return mixed
     */
    public function getClass()
    {
        return $this->class;
    }

    /**
     * @return mixed
     */
    public function getID()
    {
        return $this->ID;
    }

}