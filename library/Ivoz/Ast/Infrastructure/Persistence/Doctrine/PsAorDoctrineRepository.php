<?php

namespace Ivoz\Ast\Infrastructure\Persistence\Doctrine;

use Doctrine\ORM\EntityRepository;
use Ivoz\Ast\Domain\Model\PsAor\PsAorRepository;
use Ivoz\Ast\Domain\Model\PsAor\PsAor;

/**
 * PsAorDoctrineRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class PsAorDoctrineRepository extends EntityRepository implements PsAorRepository
{
    public function getSorceryByContact($contact)
    {
        /**
         * @var PsAor $aor
         */
        $aor = $this->findOneBy([
            'contact' => $contact
        ]);

        if ($aor) {
            return $aor->getSorceryId();
        }

        return '';
    }
}