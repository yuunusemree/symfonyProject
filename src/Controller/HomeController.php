<?php

namespace App\Controller;

use App\Entity\Admin\Messages;
use App\Entity\Book;
use App\Entity\Setting;
use App\Form\Admin\MessagesType;
use App\Repository\Admin\CommentRepository;
use App\Repository\Admin\OnShelfBookRepository;
use App\Repository\BookRepository;
use App\Repository\ImageRepository;
use App\Repository\SettingRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Mailer\Bridge\Google\Smtp\GmailTransport;
use Symfony\Component\Mailer\Mailer;
use Symfony\Component\Mime\Email;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function index(SettingRepository $settingRepository, BookRepository $bookRepository)
    {
        $setting = $settingRepository -> findAll();
        $slider = $bookRepository -> findBy(['status'=>'True'],['title'=>'ASC'], 5);
        $books = $bookRepository -> findBy(['status'=>'True'],['title'=>'DESC'], 9);
        $lastbooks = $bookRepository -> findBy(['status'=>'True'],['title'=>'ASC'], 8);
        // array findBy(array $criteria, array $orderBy=null, int|null $limit=null, int|null $offset=null)
        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
            'setting' => $setting,
            'slider' => $slider,
            'books' => $books,
            'lastbooks' => $lastbooks,
        ]);
    }

    /**
     * @Route("/book/{id}", name="book_show", methods={"GET"})
     */
    public function show(Book $book, $id, ImageRepository $imageRepository, CommentRepository $commentRepository, OnShelfBookRepository $onShelfBookRepository): Response
    {
        $images = $imageRepository -> findBy(['book'=>$id]);
        $comments = $commentRepository -> findBy(['bookid'=>$id, 'status'=>'True']);
        $onshelfbooks = $onShelfBookRepository ->findBy(['bookid'=>$id, 'status'=>'True']);
        return $this->render('home/bookshow.html.twig', [
            'book' => $book,
            'onshelfbooks' => $onshelfbooks,
            'images' => $images,
            'comments' => $comments,
        ]);
    }

    /**
     * @Route("/allbooks", name="home_allbooks")
     */
    public function allbooks(BookRepository $bookRepository): Response
    {
        $books = $bookRepository -> findAll();
        return $this->render('home/allbooks.html.twig', [
            'books' => $books,
        ]);
    }

    /**
     * @Route("/about", name="home_about")
     */
    public function about(SettingRepository $settingRepository): Response
    {
        $setting = $settingRepository -> findAll();
        return $this->render('home/aboutus.html.twig', [
            'setting' => $setting,
        ]);
    }

    /**
     * @Route("/contact", name="home_contact", methods={"GET","POST"})
     */
    public function contact(SettingRepository $settingRepository, Request $request): Response
    {

        $message = new Messages();
        $form = $this->createForm(MessagesType::class, $message);
        $form->handleRequest($request);
        $submittedToken = $request->request->get('token');

        $setting=$settingRepository->findAll();

        if ($form->isSubmitted() ) {
            if ($this->isCsrfTokenValid('form-message', $submittedToken)) {
                $entityManager = $this->getDoctrine()->getManager();
                $message->setStatus('New');
                $message->setIp($_SERVER['REMOTE_ADDR']);
                $entityManager->persist($message);
                $entityManager->flush();
                $this->addFlash('success', 'Your message has been sent successfully.');

                //**********SEND MAIL***********
                $email = (new Email())
                    ->from($setting[0]->getSmtpemail())
                    ->to($form['email']->getData())
                    ->subject('Best Online Library Your Request')
                    ->html("Dear " .$form['name']->getData() ."<br>
                            <p>We will evaluate your request and contact you as soon as possible</p>
                            Thank you <br>
                            =======================
                            <br>".$setting[0]->getCompany()." <br>
                            Address : ".$setting[0]->getAddress()."<br>
                            Phone   : ".$setting[0]->getPhone()."<br>"
                    );

                $transport = new GmailTransport($setting[0]->getSmtpemail(), $setting[0]->getSmtppassword());
                $mailer = new Mailer($transport);
                $mailer->send($email);
                //*****************SEND MAIL***********

                return $this->redirectToRoute('home_contact');
            }
        }

        $setting = $settingRepository -> findAll();
        return $this->render('home/contact.html.twig', [
            'setting' => $setting,
            'form' => $form->createView(),
        ]);
    }


}
