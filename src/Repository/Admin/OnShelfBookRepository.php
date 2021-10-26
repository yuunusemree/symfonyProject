<?php

namespace App\Repository\Admin;

use App\Entity\Admin\OnShelfBook;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;

/**
 * @method OnShelfBook|null find($id, $lockMode = null, $lockVersion = null)
 * @method OnShelfBook|null findOneBy(array $criteria, array $orderBy = null)
 * @method OnShelfBook[]    findAll()
 * @method OnShelfBook[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class OnShelfBookRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, OnShelfBook::class);
    }

    // /**
    //  * @return OnShelfBook[] Returns an array of OnShelfBook objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('o')
            ->andWhere('o.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('o.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?OnShelfBook
    {
        return $this->createQueryBuilder('o')
            ->andWhere('o.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
