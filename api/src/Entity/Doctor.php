<?php

namespace App\Entity;

use App\Traits\IdTrait;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 */
class Doctor
{
	use IdTrait;

	/**
	 * @ORM\Column
	 * @Assert\NotBlank
	 */
	private $lastname;

	/**
	 * @ORM\Column
	 * @Assert\NotBlank
	 */
	private $firstname;

	/**
	 * @ORM\Column
	 * @Assert\NotBlank
	 */
	private $street;

	/**
	 * @ORM\Column
	 * @Assert\NotBlank
	 */
	private $postcode;

	/**
	 * @ORM\Column
	 * @Assert\NotBlank
	 */
	private $city;

	/**
	 * @ORM\Column
	 * @Assert\NotBlank
	 */
	private $phone;

	public function getLastname(): string
	{
		return $this->lastname;
	}

	public function setLastname(string $lastname): self
	{
		$this->lastname = $lastname;
		return $this;
	}

	public function getFirstname(): string
	{
		return $this->firstname;
	}

	public function setFirstname(string $firstname): self
	{
		$this->firstname = $firstname;
		return $this;
	}

	public function getStreet(): string
	{
		return $this->street;
	}

	public function setStreet(string $street): self
	{
		$this->street = $street;
		return $this;
	}

	public function getPostcode(): string
	{
		return $this->postcode;
	}

	public function setPostcode(string $postcode): self
	{
		$this->postcode = $postcode;
		return $this;
	}

	public function getCity(): string
	{
		return $this->city;
	}

	public function setCity(string $city): self
	{
		$this->city = $city;
		return $this;
	}

	public function getPhone(): string
	{
		return $this->phone;
	}

	public function setPhone(string $phone): self
	{
		$this->phone = $phone;
		return $this;
	}
}
