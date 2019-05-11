<?php

namespace App\Command;

use App\Entity\Doctor;
use App\Entity\Postcode;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

class PopulatePostcodes extends Command
{
	private $manager;

	protected static $defaultName = 'populate:postcodes';

	public function __construct(EntityManagerInterface $manager)
	{
		parent::__construct();
		$this->manager = $manager;
	}

	protected function execute(InputInterface $input, OutputInterface $output)
	{
		$this->setName('Postcodes populate from all doctors in database');

		$doctors = $this->manager->getRepository(Doctor::class)->findAllPostcodesDistinct();

		$this->manager->createQuery('DELETE FROM App\Entity\Postcode')->execute();

		foreach ($doctors as $doctor) {
			$this->manager->persist(((new Postcode())->setPostcode($doctor['postcode'])));
		}

		$this->manager->flush();
	}
}
