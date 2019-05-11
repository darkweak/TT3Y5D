<?php

namespace App\Helpers;

use Symfony\Component\HttpFoundation\Response;

class PDF
{
	public const BASE_RESOURCES = __DIR__.'/../resources/';

	private $pdf;

	public function __construct(string $title = 'TT3Y5D')
	{
		$this->pdf = new \TCPDF(
			PDF_PAGE_ORIENTATION,
			PDF_UNIT,
			PDF_PAGE_FORMAT,
			true,
			'UTF-8',
			false
		);
		$this->pdf->setPrintHeader(false);
		$this->pdf->setPrintFooter(false);
		$this->pdf->SetAuthor('Someone');
		$this->pdf->SetTitle($title);
		$this->pdf->SetSubject('Feel free');
		$this->pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);
		$this->pdf->SetMargins(10, 10, 10);
		$this->pdf->SetAutoPageBreak(TRUE, 10);
		$this->pdf->AddPage('L', 'A4');
	}

	public function setImage(string $path, int $x, int $y, int $w, int $h): self
	{
		$this->pdf->Image($path, $x, $y, $w, $h);
		return $this;
	}

	public function setCheckbox(int $y): self
	{
		return $this->setImage(self::BASE_RESOURCES.'checkbox.png', 12, $y, 5, 5);
	}

	public function setContent(string $content): self
	{
		$this->pdf->writeHTML($content);
		return $this;
	}

	public function show(): Response
	{
		return new Response($this->pdf->Output('Someone'));
	}

	public function transform(int $angle, int $randX, int $randY): self
	{
		$this->pdf->StartTransform();
		$this->pdf->Rotate($angle, $randX/2, $randY/2);

		return $this;
	}

	public function stopTransform(): self
	{
		$this->pdf->StopTransform();

		return $this;
	}
}
