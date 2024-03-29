<?php

namespace App\Traits;

trait IdTrait
{
	/**
	 * @ORM\Id
	 * @ORM\GeneratedValue
	 * @ORM\Column(type="integer")
	 */
	private $id;

	public function getId(): int
	{
		return $this->id;
	}
}
