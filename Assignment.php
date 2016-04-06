<?php
/**
 * Created by PhpStorm.
 * User: ragim
 * Date: 06/04/2016
 * Time: 19:34
 */
class Assignment{
    private $name, $date, $id;

    /**
     * Assignment constructor.
     * @param $name
     * @param $date
     * @param $id
     */
    public function __construct($name, $date, $id)
    {
        $this->name = $name;
        $this->date = $date;
        $this->id = $id;
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
    public function getDate()
    {
        return $this->date;
    }

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

}