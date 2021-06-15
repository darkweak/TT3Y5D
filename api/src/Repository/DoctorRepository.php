<?php

namespace App\Repository;

use App\Entity\Doctor;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

class DoctorRepository extends ServiceEntityRepository
{
	public function __construct(ManagerRegistry $registry)
	{
		parent::__construct($registry, Doctor::class);
	}

	public function findAllPostcodesDistinct(): array
	{
		return $this->createQueryBuilder('d')
			->select('DISTINCT d.postcode')
			->orderBy('d.postcode', 'ASC')
			->getQuery()
			->execute();
	}
}
