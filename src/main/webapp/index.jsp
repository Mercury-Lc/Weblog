<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>QAQrz Index</title>
		<meta name="description" content="A responsive web app template with common components like profile, list, tabs, menu views. Made for Codrops exclusively.">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="static/bookcss/output.css">
		<link rel="stylesheet" href="static/node_modules/tippy.js/dist/themes/light.css">
	</head>
	<body class="bg-grey-lighter font-sans antialiased">
		
		<div class="fixed bg-grey-lighter pin z-50 flex justify-center items-center" id="loading">
			<svg width="60px" height="60px" viewBox="0 0 60 60" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" id="morphing">
				<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
					<g transform="translate(-1178.000000, -87.000000)">
						<g transform="translate(1159.000000, 0.000000)">
							<g transform="translate(0.000000, 87.000000)">
								<g transform="translate(19.000000, 0.000000)">
									<circle id="small-circle" fill="#5661B3" cx="30" cy="30" r="30"></circle>
									<path id="moon" d="M30.5,49.7304688 C40.7172679,49.7304688 30.5,43.266096 30.5,33.0488281 C30.5,22.8315603 40.7172679,12 30.5,12 C20.2827321,12 11.0390625,20.6479665 11.0390625,30.8652344 C11.0390625,41.0825022 20.2827321,49.7304688 30.5,49.7304688 Z" fill="#F4E1E0"></path>
									<circle id="big-circle" fill="#070707" cx="31" cy="31" r="11"></circle>
								</g>
							</g>
						</g>
					</g>
				</g>
			</svg>
		</div>
		<div class="bg-indigo-darker text-center p-4 px-6 flex items-center">
			<div class="hidden lg:block lg:w-1/4 xl:w-1/5 pr-8">
				<a href="#" class="flex justify-start pl-6">
				<img src="static/bookimages/logo.svg" class="" alt="logo">
			</a>
			</div>
			<div class="lg:hidden pr-3" id="mobile-nav-trigger">
				<div class="toggle p-2 block"><span></span></div>
			</div>
			<div class="flex flex-grow items-center lg:w-3/4 xl:w-4/5">
				<span class="relative w-full">
				<input type="search" placeholder="Search" class="w-full text-sm text-white transition border border-transparent focus:outline-none focus:border-indigo placeholder-white rounded bg-indigo-medium py-1 px-2 pl-10 appearance-none leading-normal ds-input">
				<div class="absolute search-icon" style="top: .5rem; left: .8rem;">
				<svg class="fill-current pointer-events-none text-white w-4 h-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
					<path d="M12.9 14.32a8 8 0 1 1 1.41-1.41l5.35 5.33-1.42 1.42-5.33-5.34zM8 14A6 6 0 1 0 8 2a6 6 0 0 0 0 12z"></path>
				</svg>
				</div>
			</span>
				<a href="static/sign-in.html" class="text-sm text-right text-white py-2 px-3 hover:text-grey-dark no-underline hidden lg:block lg:w-1/3 px-6">Join</a>
			</div>
		</div>
		
		
		
		<!-- Main -->
		<div class="flex">
			
			
			
			<!-- Side Nav 左侧导航-->
			<nav class="absolute lg:relative lg:flex lg:text-sm bg-indigo-darker lg:bg-transparent pin-l pin-r py-4 px-6 lg:pt-10 lg:pl-12 lg:pr-6 -mt-1 lg:mt-0 overflow-y-auto lg:w-1/5 lg:border-r z-40 hidden">
				<ul class="list-reset mb-8 w-full">
					
					<li class="ml-2 mb-4 flex">
						<img src="static/bookimages/home-default.svg" alt="home-icon" class="w-4 h-4 mr-2">
						<div class="hover:cursor-pointer text-white lg:text-indigo-darkest no-underline font-medium mobile-home-trigger">Home</div>
					</li>
					
					<li class="ml-2 mb-4">
						<div class="flex" id="sidenav-categories-trigger">
							<img src="static/bookimages/category-default.svg" alt="home-icon" class="w-4 h-4 mr-2">
							<div class="hover:cursor-pointer text-white lg:text-indigo-darkest no-underline font-medium w-full relative">
								Categories
								<div class="pointer-events-none absolute pin-y pin-r flex items-center px-1 text-grey-darker" id="sidenav-icon">
									<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
										<path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z" />
									</svg>
								</div>
							</div>
						</div>
						<ul class="text-grey lg:text-grey-dark list-reset leading-loose mt-2" id="sidenav-categories">
							<li class="hover:text-indigo-dark hover:cursor-pointer transition-normal ml-1 border-l border-grey-dark pl-4">Fiction</li>
							<li class="hover:text-indigo-dark hover:cursor-pointer transition-normal ml-1 border-l border-grey-dark pl-4">Nonfiction</li>
							<li class="hover:text-indigo-dark hover:cursor-pointer transition-normal ml-1 border-l border-grey-dark pl-4">Lifestyle</li>
							<li class="hover:text-indigo-dark hover:cursor-pointer transition-normal ml-1 border-l border-grey-dark pl-4">Health &amp; Fitness</li>
							<li class="text-indigo-lighter lg:text-indigo-darker font-medium flex justify-between items-center hover:cursor-pointer transition-normal ml-1 border-l border-grey-dark pl-4 mobile-home-trigger">
								<span>Art & Design</span>
								<span class="bg-indigo-dark text-white text-xs rounded-full px-2 leading-normal">7</span>
							</li>
							<li class="hover:text-indigo-dark hover:cursor-pointer transition-normal ml-1 border-l border-grey-dark pl-4">Music</li>
						</ul>
					</li>
					<li class="ml-2 mb-4 flex">
						<img src="static/bookimages/wishlist-default.svg" alt="wishlist-icon" class="w-4 h-4 mr-2">
						<div class="hover:cursor-pointer text-white lg:text-indigo-darkest no-underline font-medium mobile-home-trigger">Wishlist</div>
					</li>
					<li class="ml-2 mb-4 flex lg:hidden">
						<img src="static/bookimages/profile-default.svg" alt="profile-icon" class="w-4 h-4 mr-2">
						<div class="hover:cursor-pointer text-white lg:text-indigo-darkest no-underline font-medium" id="mobile-profile-trigger">Profile</div>
					</li>
				</ul>
			</nav>
			

			<!-- Content  中间展示-->
			<div class="flex flex-1 flex-col md:px-6 pt-10" id="content">
				<!-- Title -->
				<div class="px-6 md:px-0 flex justify-between items-center -order-1">
					<div>
						<h2 class="font-normal">Recommendation</h2>
						<!--<p class="text-grey-dark mt-2">Interesting Stats</p>-->
					</div>
					<!--可以作为Admin进入的标志~-->
					<!--<button class="bg-indigo-dark hover:bg-indigo-darker text-white text-sm py-2 px-4 rounded-full transition-normal hover:shadow hover:translate-y-1 active:translate-y-1 focus:outline-none">Add New Book</button>-->
				</div>
				
				
				
				
				<!-- Filter  图书的展示的导航  可选项已关闭-->
				<div class="px-6 md:px-0 flex items-baseline justify-between border-b-2 border-grey-light mt-6 order-0 lg:order-1">
					<h4 class="hidden md:inline-block text-grey-dark font-normal">Books</h4>
					<!--<div>
						<div class="inline-block md:hidden no-underline border-indigo pb-2 px-2 text-sm mr-2 text-indigo-darkest hover:cursor-pointer js-tab relative" data-tab="section-stats">Stats</div>
						<div class="no-underline inline-block border-indigo pb-2 px-2 text-sm mr-2 text-indigo-darkest hover:cursor-pointer js-tab active relative" data-tab="section-library">Library <span class="text-indigo text-xs">(7)</span></div>
						<div class="no-underline inline-block border-indigo pb-2 px-2 text-sm text-indigo-darkest hover:cursor-pointer js-tab relative" data-tab="section-picks">Picks for you</div>
					</div>-->
				</div>
				
				
				<!-- Library  图书的展示 -->
				<div class="hidden px-2 pt-2 md:px-0 flex-wrap order-2 pb-8 js-tab-pane active" id="section-library">
					
					<div class="flex flex-row sm:flex-col items-center sm:items-start w-full xs:w-1/2 sm:w-1/3 md:w-1/5 p-4 js-book">
						<img src="static/bookimages/book-01.jpg" alt="book-01" class="w-1/3 sm:w-full shadow-md transition-normal hover:brighter hover:translate-y-1 hover:shadow-lg hover:border-indigo">
						<div class="ml-3 sm:ml-0 w-2/3 sm:w-full">
							<p class="text-sm my-2 font-medium sm:font-normal">apartmento Aug 2018</p>
							<p class="block sm:hidden mt-2 mb-3 text-sm leading-medium">Eu quo donec pellentesque, urna velit. Ultrices ante iaculis ligula praesent.</p>
							<label for="" class="hidden sm:inline-block rounded-full libre-bg-grey text-white px-2 py-1/2 text-xs">Loaned</label>
							<div class="block sm:hidden relative">
								<select class="block appearance-none w-full text-sm bg-white border border-grey-light hover:border-grey pl-3 py-1 pr-8 rounded shadow leading-normal focus:outline-none focus:shadow-outline">
									<option>Start</option>
									<option>Loaned</option>
									<option selected>Finished</option>
								</select>
								<div class="pointer-events-none absolute pin-y pin-r flex items-center px-2 text-grey-darker">
									<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
										<path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z" />
									</svg>
								</div>
							</div>
						</div>
					</div>
					
				
					<div class="flex flex-row sm:flex-col items-center sm:items-start w-full xs:w-1/2 sm:w-1/3 md:w-1/5 p-4">
						<img src="static/bookimages/book-02.jpg" alt="book-02" class="w-1/3 sm:w-full shadow-md transition-normal hover:brighter hover:translate-y-1 hover:shadow-lg hover:border-indigo js-book">
						<div class="ml-3 sm:ml-0 w-2/3 sm:w-full">
							<p class="text-sm my-2 font-medium sm:font-normal">Popeye Aug 2018</p>
							<p class="block sm:hidden mt-2 mb-3 text-sm leading-medium">Eu quo donec pellentesque, urna velit. Ultrices ante iaculis ligula praesent.</p>
							<label for="" class="hidden sm:inline-block rounded-full libre-bg-yellow text-white px-2 py-1/2 text-xs">Started</label>
							<div class="block sm:hidden relative">
								<select class="block appearance-none w-full text-sm bg-white border border-grey-light hover:border-grey pl-3 py-1 pr-8 rounded shadow leading-normal focus:outline-none focus:shadow-outline">
									<option>Start</option>
									<option>Loaned</option>
									<option>Reading</option>
									<option selected>Finished</option>
								</select>
								<div class="pointer-events-none absolute pin-y pin-r flex items-center px-2 text-grey-darker">
									<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
										<path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z" />
									</svg>
								</div>
							</div>
						</div>
					</div>
					
					
					<div class="flex flex-row sm:flex-col items-center sm:items-start w-full xs:w-1/2 sm:w-1/3 md:w-1/5 p-4">
						<img src="static/bookimages/book-03.jpg" alt="book-03" class="w-1/3 sm:w-full shadow-md transition-normal hover:brighter hover:translate-y-1 hover:shadow-lg hover:border-indigo js-book">
						<div class="ml-3 sm:ml-0 w-2/3 sm:w-full">
							<p class="text-sm my-2 font-medium sm:font-normal">Brutus Aug 2018</p>
							<p class="block sm:hidden mt-2 mb-3 text-sm leading-medium">Eu quo donec pellentesque, urna velit. Ultrices ante iaculis ligula praesent.</p>
							<label for="" class="hidden sm:inline-block rounded-full libre-bg-pink text-white px-2 py-1/2 text-xs">Reading</label>
							<div class="block sm:hidden relative">
								<select class="block appearance-none w-full text-sm bg-white border border-grey-light hover:border-grey pl-3 py-1 pr-8 rounded shadow leading-normal focus:outline-none focus:shadow-outline">
									<option>Start</option>
									<option>Loaned</option>
									<option selected>Finished</option>
								</select>
								<div class="pointer-events-none absolute pin-y pin-r flex items-center px-2 text-grey-darker">
									<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
										<path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z" />
									</svg>
								</div>
							</div>
						</div>
					</div>
					
					
					<div class="flex flex-row sm:flex-col items-center sm:items-start w-full xs:w-1/2 sm:w-1/3 md:w-1/5 p-4">
						<img src="static/bookimages/book-04.jpg" alt="book-04" class="w-1/3 sm:w-full shadow-md transition-normal hover:brighter hover:translate-y-1 hover:shadow-lg hover:border-indigo js-book">
						<div class="ml-3 sm:ml-0 w-2/3 sm:w-full">
							<p class="text-sm my-2 font-medium sm:font-normal">Harnako Aug 2018</p>
							<p class="block sm:hidden mt-2 mb-3 text-sm leading-medium">Eu quo donec pellentesque, urna velit. Ultrices ante iaculis ligula praesent.</p>
							<label for="" class="hidden sm:inline-block rounded-full bg-indigo text-white px-2 py-1/2 text-xs">Finished</label>
							<div class="block sm:hidden relative">
								<select class="block appearance-none w-full text-sm bg-white border border-grey-light hover:border-grey pl-3 py-1 pr-8 rounded shadow leading-normal focus:outline-none focus:shadow-outline">
									<option>Start</option>
									<option>Loaned</option>
									<option selected>Finished</option>
								</select>
								<div class="pointer-events-none absolute pin-y pin-r flex items-center px-2 text-grey-darker">
									<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
										<path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z" />
									</svg>
								</div>
							</div>
						</div>
					</div>
					
					
					<div class="flex flex-row sm:flex-col items-center sm:items-start w-full xs:w-1/2 sm:w-1/3 md:w-1/5 p-4">
						<img src="static/bookimages/book-05.jpg" alt="book-05" class="w-1/3 sm:w-full shadow-md transition-normal hover:brighter hover:translate-y-1 hover:shadow-lg hover:border-indigo js-book">
						<div class="ml-3 sm:ml-0 w-2/3 sm:w-full">
							<p class="text-sm my-2 font-medium sm:font-normal">Premium 2 2018</p>
							<p class="block sm:hidden mt-2 mb-3 text-sm leading-medium">Eu quo donec pellentesque, urna velit. Ultrices ante iaculis ligula praesent.</p>
							<label for="" class="hidden sm:inline-block rounded-full bg-indigo text-white px-2 py-1/2 text-xs">Finished</label>
							<div class="block sm:hidden relative">
								<select class="block appearance-none w-full text-sm bg-white border border-grey-light hover:border-grey pl-3 py-1 pr-8 rounded shadow leading-normal focus:outline-none focus:shadow-outline">
									<option>Start</option>
									<option>Loaned</option>
									<option selected>Finished</option>
								</select>
								<div class="pointer-events-none absolute pin-y pin-r flex items-center px-2 text-grey-darker">
									<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
										<path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z" />
									</svg>
								</div>
							</div>
						</div>
					</div>
					
					
					<div class="flex flex-row sm:flex-col items-center sm:items-start w-full xs:w-1/2 sm:w-1/3 md:w-1/5 p-4">
						<img src="static/bookimages/book-06.jpg" alt="book-06" class="w-1/3 sm:w-full shadow-md transition-normal hover:brighter hover:translate-y-1 hover:shadow-lg hover:border-indigo js-book">
						<div class="ml-3 sm:ml-0 w-2/3 sm:w-full">
							<p class="text-sm my-2 font-medium sm:font-normal">Premium 4 2018</p>
							<p class="block sm:hidden mt-2 mb-3 text-sm leading-medium">Eu quo donec pellentesque, urna velit. Ultrices ante iaculis ligula praesent.</p>
							<label for="" class="hidden sm:inline-block rounded-full bg-indigo text-white px-2 py-1/2 text-xs">Finished</label>
							<div class="block sm:hidden relative">
								<select class="block appearance-none w-full text-sm bg-white border border-grey-light hover:border-grey pl-3 py-1 pr-8 rounded shadow leading-normal focus:outline-none focus:shadow-outline">
									<option>Start</option>
									<option>Loaned</option>
									<option selected>Finished</option>
								</select>
								<div class="pointer-events-none absolute pin-y pin-r flex items-center px-2 text-grey-darker">
									<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
										<path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z" />
									</svg>
								</div>
							</div>
						</div>
					</div>
					<div class="flex flex-row sm:flex-col items-center sm:items-start w-full xs:w-1/2 sm:w-1/3 md:w-1/5 p-4">
						<img src="static/bookimages/book-07.jpg" alt="book-07" class="w-1/3 sm:w-full shadow-md transition-normal hover:brighter hover:translate-y-1 hover:shadow-lg hover:border-indigo js-book">
						<div class="ml-3 sm:ml-0 w-2/3 sm:w-full">
							<p class="text-sm my-2 font-medium sm:font-normal">Brutus Aug 2018</p>
							<p class="block sm:hidden mt-2 mb-3 text-sm leading-medium">Eu quo donec pellentesque, urna velit. Ultrices ante iaculis ligula praesent.</p>
							<label for="" class="hidden sm:inline-block rounded-full libre-bg-pink text-white px-2 py-1/2 text-xs">Reading</label>
							<div class="block sm:hidden relative">
								<select class="block appearance-none w-full text-sm bg-white border border-grey-light hover:border-grey pl-3 py-1 pr-8 rounded shadow leading-normal focus:outline-none focus:shadow-outline">
									<option>Start</option>
									<option>Loaned</option>
									<option selected>Finished</option>
								</select>
								<div class="pointer-events-none absolute pin-y pin-r flex items-center px-2 text-grey-darker">
									<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
										<path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z" />
									</svg>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				
				<!-- Picks -->
				<div class="hidden flex-wrap order-2 pt-0 md:pt-6 md:pb-8 js-tab-pane" id="section-picks">
					<div class="flex justify-start items-center p-5 px-6 w-full sm:w-1/2" style="background-color:#FBC164;">
						<img src="static/bookimages/pick-1.jpg" alt="pick" class="shadow-md w-1/3">
						<div class="ml-4 mt-1 w-2/3">
							<p class="font-medium">Popeye Jul 2018</p>
							<p class="mt-3 text-sm">Eu quo donec pellentesque, urna velit. Ultrices ante iaculis ligula praesent</p>
							<button class="shadow-md mt-3 bg-grey-lightest hover:bg-white text-indigo-darker text-xs py-2 px-4 rounded-full transition-normal hover:shadow hover:translate-y-1 active:translate-y-1 focus:outline-none">Add to Wishlist</button>
						</div>
					</div>
					
					<div class="flex justify-start items-center p-5 px-6  w-full sm:w-1/2" style="background-color:#F1CECD;">
						<img src="static/bookimages/pick-2.jpg" alt="pick" class="shadow-md w-1/3">
						<div class="ml-4 mt-1 w-2/3">
							<p class="font-medium">Brutus Aug 2018</p>
							<p class="mt-3 text-sm">Sapien eget, fermentum curabitur quis ut pharetra odio id, vitae eros eget maecenas, ullamcorper vitae.</p>
							<button class="shadow-md mt-3 bg-grey-lightest hover:bg-white text-indigo-darker text-xs py-2 px-4 rounded-full transition-normal hover:shadow hover:translate-y-1 active:translate-y-1 focus:outline-none">Add to Wishlist</button>
						</div>
					</div>
					<div class="flex justify-start items-center p-5 px-6  w-full sm:w-1/2" style="background-color:#ECE7E9;">
						<img src="static/bookimages/pick-3.jpg" alt="pick" class="shadow-md w-1/3">
						<div class="ml-4 mt-1 w-2/3">
							<p class="font-medium">Casa Aug 2018</p>
							<p class="mt-3 text-sm">Curabitur quis ut pharetra odio id, vitae eros eget tristique maecenas, ullamcorper vitae.</p>
							<button class="shadow-md mt-3 bg-grey-lightest hover:bg-white text-indigo-darker text-xs py-2 px-4 rounded-full transition-normal hover:shadow hover:translate-y-1 active:translate-y-1 focus:outline-none">Add to Wishlist</button>
						</div>
					</div>
					
					<div class="flex justify-start items-center p-5 px-6  w-full sm:w-1/2" style="background-color:#D0E3E8;">
						<img src="static/bookimages/pick-4.jpg" alt="pick" class="shadow-md w-1/3">
						<div class="ml-4 mt-1 w-2/3">
							<p class="font-medium">SUPER: Jul 2018</p>
							<p class="mt-3 text-sm">Eu quo donec pellentesque, urna velit. Ultrices ante iaculis ligula praesent</p>
							<button class="shadow-md mt-3 bg-grey-lightest hover:bg-white text-indigo-darker text-xs py-2 px-4 rounded-full transition-normal hover:shadow hover:translate-y-1 active:translate-y-1 focus:outline-none">Add to Wishlist</button>
						</div>
					</div>
				</div>
			</div>
			
			
			<!-- Profile -->
			<div class="hidden absolute pin-b z-10 lg:relative lg:block w-full lg:w-1/5 bg-grey-lighter-2 px-6 pt-10" id="profile">
				<div class="flex items-center mb-6">
					<svg width="60px" height="60px" viewBox="0 0 60 60" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" id="avatar">
						<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
							<g transform="translate(-1178.000000, -87.000000)">
								<g transform="translate(1159.000000, 0.000000)">
									<g transform="translate(0.000000, 87.000000)">
										<g transform="translate(19.000000, 0.000000)">
											<circle id="small-circle" fill="#5661B3" cx="30" cy="30" r="30"></circle>
											<path id="moon" d="M30.5,49.7304688 C40.7172679,49.7304688 30.5,43.266096 30.5,33.0488281 C30.5,22.8315603 40.7172679,12 30.5,12 C20.2827321,12 11.0390625,20.6479665 11.0390625,30.8652344 C11.0390625,41.0825022 20.2827321,49.7304688 30.5,49.7304688 Z" fill="#F4E1E0"></path>
											<circle id="big-circle" fill="#070707" cx="31" cy="31" r="11"></circle>
										</g>
									</g>
								</g>
							</g>
						</g>
					</svg>
					<div class="ml-3">
						<p>Keep a record of the books you have read, want to read and are reading, grade them by the way, add tags and personal notes, and write comments. </p>
						<p class="text-grey-dark mt-1 text-sm">According to your taste, recommend the right book for you.</p>
					</div>
				</div>
				
				</div>
			</div>
		</div>
		<div class="hidden p-4" id="popup">
			<h3 class="font-medium">Popeye Aug 2018</h3>
			<p class="text-sm mt-2 mb-3">Curabitur quis ut pharetra odio id, vitae eros eget tristique maecenas, ullamcorper vitae.</p>
			<div class="relative">
				<select class="block appearance-none w-full text-sm bg-white border border-grey-light hover:border-grey pl-3 py-1 pr-8 rounded shadow leading-normal focus:outline-none focus:shadow-outline" id="tippy-select">
					<option>Start</option>
					<option>Loaned</option>
					<option selected>Finished</option>
				</select>
				<div class="pointer-events-none absolute pin-y pin-r flex items-center px-2 text-grey-darker">
					<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
						<path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z" />
					</svg>
				</div>
			</div>
		</div>
		
		<div style="margin: 0 auto; text-align: center;">QAQrz &copy;All Rights Reserved <a href="#" title="QAQrz" target="_blank">OL</a></div>

		<script src="static/bookjs/bundle.js" async defer></script>
	</body>
</html>