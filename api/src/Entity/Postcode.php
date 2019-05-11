<?php

namespace App\Entity;

use App\Traits\IdTrait;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 */
class Postcode
{
	use IdTrait;

	/**
	 * @ORM\Column
	 * @Assert\NotBlank
	 */
	private $postcode;

	public function getPostcode(): string
	{
		return $this->postcode;
	}

	public function setPostcode(string $postcode): self
	{
		$this->postcode = $postcode;
		return $this;
	}
}
