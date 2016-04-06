<?php
/**
 * Created by PhpStorm.
 * User: ragim
 * Date: 06/04/2016
 * Time: 19:34
 */
class Assignment{
    public $name, $date, $id;

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

}