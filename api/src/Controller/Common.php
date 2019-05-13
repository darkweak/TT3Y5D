<?php

namespace App\Controller;

use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Response;
use Twig\Environment;

abstract class Common
{
	protected $environment;
	protected $manager;

	public function __construct(Environment $environment, EntityManagerInterface $manager)
	{
		$this->environment = $environment;
		$this->manager = $manager;
	}

	protected function render(string $template, array $options = []): Response
	{
		return new Response(
			$this->generateEnvironment(
				$template,
				array_merge(
					[
						'title' => getenv('APP_NAME'),
					],
					$options
				)
			)
		);
	}

	protected function generateEnvironment(string $template, array $options): string
	{
		return $this->environment->render(
			"Views/{$template}.html.twig",
			$options
		);
	}
}
