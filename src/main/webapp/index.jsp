<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Nexus · modern e‑commerce</title>
  <!-- Google Fonts & Font Awesome -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
  <style>
    /* ----- reset & base ----- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    body {
      font-family: 'Inter', sans-serif;
      background: #f5f9ff;
      color: #0a1a2f;
      line-height: 1.5;
      padding: 0 0 2rem;
    }
    a {
      text-decoration: none;
      color: inherit;
    }
    .container {
      max-width: 1240px;
      margin: 0 auto;
      padding: 0 24px;
    }
    /* ----- buttons / badges ----- */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      padding: 10px 24px;
      border: none;
      border-radius: 60px;
      font-weight: 600;
      font-size: 0.95rem;
      cursor: pointer;
      transition: all 0.2s;
    }
    .btn-primary {
      background: #0a1a2f;
      color: white;
    }
    .btn-primary:hover {
      background: #1c3250;
      transform: scale(1.02);
    }
    .btn-outline {
      background: transparent;
      border: 1.5px solid rgba(255, 255, 255, 0.3);
      color: white;
    }
    .btn-outline:hover {
      background: rgba(255, 255, 255, 0.08);
    }
    .btn-accent {
      background: #3b82f6;
      color: white;
    }
    .btn-accent:hover {
      background: #2563eb;
      transform: scale(1.02);
    }
    .badge {
      background: #ef4444;
      color: white;
      padding: 2px 12px;
      border-radius: 40px;
      font-size: 0.75rem;
      font-weight: 700;
    }
    /* ----- header ----- */
    header {
      background: rgba(255, 255, 255, 0.8);
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      border-bottom: 1px solid rgba(0, 0, 0, 0.03);
      position: sticky;
      top: 0;
      z-index: 60;
      padding: 12px 0;
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 12px;
    }
    .brand {
      font-weight: 700;
      font-size: 1.6rem;
      letter-spacing: -0.3px;
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .brand i {
      color: #3b82f6;
      font-size: 1.4rem;
    }
    .brand span {
      color: #3b82f6;
    }
    .nav-links {
      display: flex;
      list-style: none;
      gap: 4px;
      align-items: center;
    }
    .nav-links a {
      padding: 8px 16px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.9rem;
      color: #1e2f4a;
      transition: 0.2s;
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .nav-links a:hover,
    .nav-links a.active {
      background: #eef4ff;
      color: #3b82f6;
    }
    .header-actions {
      display: flex;
      align-items: center;
      gap: 14px;
    }
    .icon-btn {
      background: transparent;
      border: none;
      font-size: 1.2rem;
      color: #1e2f4a;
      width: 42px;
      height: 42px;
      border-radius: 40px;
      display: grid;
      place-items: center;
      transition: 0.2s;
      cursor: pointer;
    }
    .icon-btn:hover {
      background: #eef4ff;
      color: #3b82f6;
    }
    .cart-wrap {
      position: relative;
    }
    .cart-count {
      position: absolute;
      top: -4px;
      right: -4px;
      background: #3b82f6;
      color: white;
      font-size: 0.7rem;
      font-weight: 700;
      width: 22px;
      height: 22px;
      border-radius: 40px;
      display: grid;
      place-items: center;
      border: 2px solid white;
    }
    .search-box {
      display: flex;
      align-items: center;
      background: white;
      border-radius: 60px;
      padding: 4px 4px 4px 18px;
      border: 1px solid #e9eff6;
      transition: 0.2s;
      min-width: 180px;
    }
    .search-box:focus-within {
      border-color: #3b82f6;
      box-shadow: 0 0 0 4px rgba(59, 130, 246, 0.12);
    }
    .search-box input {
      border: none;
      background: transparent;
      outline: none;
      width: 100%;
      padding: 8px 0;
      font-size: 0.9rem;
    }
    .search-box button {
      background: #3b82f6;
      border: none;
      color: white;
      border-radius: 60px;
      padding: 8px 18px;
      font-weight: 600;
      cursor: pointer;
      font-size: 0.85rem;
      display: flex;
      align-items: center;
      gap: 6px;
      transition: 0.2s;
    }
    .search-box button:hover {
      background: #2563eb;
    }
    .mobile-toggle {
      display: none;
      background: transparent;
      border: none;
      font-size: 1.6rem;
      cursor: pointer;
      color: #0a1a2f;
    }
    /* ----- hero ----- */
    .hero {
      background: linear-gradient(135deg, #0a1a2f 0%, #1a3555 100%);
      border-radius: 28px;
      margin: 28px auto 32px;
      padding: 56px 48px;
      color: white;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 30px;
      box-shadow: 0 24px 48px -12px rgba(0, 20, 40, 0.3);
    }
    .hero-content {
      max-width: 560px;
    }
    .hero h1 {
      font-size: 2.8rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      line-height: 1.1;
      margin-bottom: 14px;
    }
    .hero p {
      opacity: 0.8;
      font-size: 1.05rem;
      margin-bottom: 28px;
    }
    .hero-actions {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
    }
    .hero-illustration i {
      font-size: 5rem;
      opacity: 0.25;
    }
    /* ----- section ----- */
    .section {
      padding: 40px 0;
    }
    .section-header {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 12px;
      margin-bottom: 28px;
    }
    .section-header h2 {
      font-weight: 700;
      font-size: 1.8rem;
      letter-spacing: -0.3px;
    }
    .section-header .muted {
      color: #5e6f8d;
    }
    /* categories */
    .grid-cat {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
      gap: 16px;
    }
    .cat-card {
      background: white;
      padding: 22px 10px;
      border-radius: 20px;
      text-align: center;
      box-shadow: 0 8px 20px -8px rgba(0, 0, 0, 0.04);
      transition: 0.25s;
      cursor: default;
      border: 1px solid rgba(0, 0, 0, 0.02);
    }
    .cat-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 20px 30px -12px rgba(0, 20, 50, 0.08);
    }
    .cat-card .icon {
      font-size: 2rem;
      color: #3b82f6;
      margin-bottom: 6px;
    }
    .cat-card h4 {
      font-weight: 600;
      font-size: 0.95rem;
    }
    /* products */
    .grid-prod {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(230px, 1fr));
      gap: 24px;
    }
    .product {
      background: white;
      border-radius: 20px;
      overflow: hidden;
      box-shadow: 0 8px 20px -8px rgba(0, 0, 0, 0.04);
      transition: 0.25s;
      display: flex;
      flex-direction: column;
    }
    .product:hover {
      transform: translateY(-6px);
      box-shadow: 0 24px 40px -16px rgba(0, 20, 50, 0.12);
    }
    .product img {
      width: 100%;
      height: 200px;
      object-fit: cover;
      background: #f0f4fe;
    }
    .product-body {
      padding: 16px 16px 8px;
      flex: 1;
    }
    .product-title {
      font-weight: 600;
      font-size: 1rem;
    }
    .product-cat {
      font-size: 0.75rem;
      color: #5e6f8d;
      text-transform: uppercase;
      letter-spacing: 0.3px;
    }
    .price-row {
      display: flex;
      align-items: center;
      gap: 10px;
      margin: 8px 0 4px;
    }
    .price-current {
      font-weight: 700;
      font-size: 1.2rem;
    }
    .price-old {
      color: #5e6f8d;
      text-decoration: line-through;
      font-size: 0.85rem;
    }
    .rating {
      color: #fbbf24;
      font-size: 0.8rem;
      letter-spacing: 1px;
    }
    .product-footer {
      padding: 10px 16px 16px;
      display: flex;
      gap: 8px;
      align-items: center;
    }
    .add-btn {
      flex: 1;
      background: #0a1a2f;
      color: white;
      border: none;
      border-radius: 40px;
      padding: 10px 0;
      font-weight: 600;
      cursor: pointer;
      transition: 0.2s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
    }
    .add-btn:hover {
      background: #1c3250;
    }
    .wish-btn {
      background: #f1f5f9;
      border: none;
      width: 42px;
      height: 42px;
      border-radius: 40px;
      cursor: pointer;
      transition: 0.2s;
      display: grid;
      place-items: center;
    }
    .wish-btn:hover {
      background: #e2eaf9;
    }
    /* flash deal */
    .deal-card {
      background: white;
      border-radius: 24px;
      overflow: hidden;
      display: flex;
      flex-wrap: wrap;
      box-shadow: 0 12px 30px -12px rgba(0, 0, 0, 0.06);
    }
    .deal-card img {
      width: 100%;
      max-width: 340px;
      height: 240px;
      object-fit: cover;
    }
    .deal-content {
      padding: 28px 32px;
      flex: 1;
    }
    .deal-content h3 {
      font-size: 1.6rem;
      font-weight: 700;
    }
    .timer {
      display: flex;
      gap: 10px;
      margin: 16px 0;
    }
    .time-box {
      background: #0a1a2f;
      color: white;
      padding: 6px 12px;
      border-radius: 14px;
      min-width: 60px;
      text-align: center;
    }
    .time-box div:first-child {
      font-size: 1.4rem;
      font-weight: 700;
    }
    .time-box span {
      font-size: 0.7rem;
      opacity: 0.7;
    }
    /* testimonials */
    .testimonials {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 4px 4px 20px;
    }
    .testimonial {
      min-width: 260px;
      background: white;
      padding: 22px;
      border-radius: 20px;
      box-shadow: 0 8px 20px -8px rgba(0, 0, 0, 0.04);
      flex-shrink: 0;
    }
    /* newsletter */
    .newsletter {
      background: linear-gradient(135deg, #0a1a2f, #1f3a60);
      color: white;
      border-radius: 24px;
      padding: 40px 32px;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 24px;
    }
    .newsletter h3 {
      font-size: 1.6rem;
      font-weight: 700;
    }
    .newsletter form {
      display: flex;
      gap: 8px;
      flex-wrap: wrap;
      background: rgba(255, 255, 255, 0.06);
      padding: 6px;
      border-radius: 60px;
      align-items: center;
    }
    .newsletter input {
      border: none;
      padding: 12px 20px;
      border-radius: 60px;
      background: transparent;
      color: white;
      min-width: 200px;
      outline: none;
    }
    .newsletter input::placeholder {
      color: rgba(255, 255, 255, 0.5);
    }
    .newsletter button {
      background: white;
      border: none;
      color: #0a1a2f;
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 700;
      cursor: pointer;
      transition: 0.2s;
    }
    .newsletter button:hover {
      background: #eef4ff;
    }
    /* footer */
    footer {
      margin-top: 48px;
      padding: 32px 0 16px;
      border-top: 1px solid rgba(0, 0, 0, 0.04);
      color: #5e6f8d;
    }
    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      gap: 32px;
      justify-content: space-between;
    }
    .footer-links {
      display: flex;
      gap: 48px;
      flex-wrap: wrap;
    }
    .footer-links div {
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    .footer-links strong {
      color: #0a1a2f;
    }
    .footer-bottom {
      text-align: center;
      margin-top: 28px;
      font-size: 0.85rem;
    }
    /* responsive */
    @media (max-width: 900px) {
      .nav-links {
        display: none;
      }
      .mobile-toggle {
        display: inline-block;
      }
      .search-box {
        min-width: 140px;
      }
      .hero {
        padding: 36px 24px;
      }
      .hero h1 {
        font-size: 2.2rem;
      }
      .deal-card img {
        max-width: 100%;
      }
    }
    @media (max-width: 600px) {
      .header-inner {
        flex-wrap: wrap;
      }
      .search-box {
        order: 10;
        width: 100%;
      }
      .hero h1 {
        font-size: 1.8rem;
      }
      .grid-prod {
        grid-template-columns: 1fr 1fr;
      }
    }
    @media (max-width: 420px) {
      .grid-prod {
        grid-template-columns: 1fr;
      }
    }
    .muted {
      color: #5e6f8d;
    }
  </style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:10px;">
      <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
      <a href="#" class="brand"><i class="fas fa-store-alt"></i> Nexus<span>Shop</span></a>
    </div>

    <ul class="nav-links" id="mainNav">
      <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
      <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
      <li><a href="#productsSection"><i class="fas fa-fire"></i> Trending</a></li>
      <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
    </ul>

    <div style="display:flex;align-items:center;gap:12px;flex-wrap:wrap;">
      <div class="search-box">
        <input type="text" id="searchInput" placeholder="Search..." aria-label="Search" />
        <button id="searchBtn"><i class="fas fa-search"></i> Find</button>
      </div>
      <div class="header-actions">
        <button class="icon-btn" title="Wishlist"><i class="far fa-heart"></i></button>
        <div class="cart-wrap">
          <button class="icon-btn" id="cartBtn" title="Cart"><i class="fas fa-shopping-bag"></i></button>
          <span class="cart-count" id="cartCount">0</span>
        </div>
      </div>
    </div>
  </div>
  <!-- mobile menu -->
  <div id="mobileMenu" style="display:none;background:white;border-top:1px solid #eee;padding:14px 24px;">
    <ul style="list-style:none;display:flex;flex-direction:column;gap:12px;">
      <li><a href="#">Home</a></li>
      <li><a href="#categories">Categories</a></li>
      <li><a href="#productsSection">Trending</a></li>
      <li><a href="#deals">Deals</a></li>
    </ul>
  </div>
</header>

<main>
  <!-- hero -->
  <section class="container hero">
    <div class="hero-content">
      <h1>Fresh finds, <br />delivered.</h1>
      <p>Explore our curated collection — from tech to style, all in one place.</p>
      <div class="hero-actions">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
        <button class="btn btn-outline" id="exploreDeals">Explore deals</button>
      </div>
    </div>
    <div class="hero-illustration"><i class="fas fa-box-open"></i></div>
  </section>

  <!-- categories -->
  <section class="section container" id="categories">
    <div class="section-header">
      <h2>Browse categories</h2>
      <span class="muted">Popular collections</span>
    </div>
    <div class="grid-cat" id="categoriesGrid"></div>
  </section>

  <!-- products -->
  <section class="section container" id="productsSection">
    <div class="section-header">
      <h2>Trending now</h2>
      <span class="muted">Most loved this week</span>
    </div>
    <div class="grid-prod" id="productsGrid"></div>
  </section>

  <!-- flash deal -->
  <section class="section container" id="deals">
    <div class="section-header">
      <h2>⚡ Flash deal</h2>
      <span class="muted">Limited time</span>
    </div>
    <div class="deal-card">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80" alt="MacBook Air" />
      <div class="deal-content">
        <h3>MacBook Air M2</h3>
        <p class="muted">Supercharged by the M2 chip.</p>
        <div class="timer" id="dealTimer">
          <div class="time-box"><div id="dealDays">0</div><span>Days</span></div>
          <div class="time-box"><div id="dealHours">00</div><span>Hrs</span></div>
          <div class="time-box"><div id="dealMinutes">00</div><span>Min</span></div>
          <div class="time-box"><div id="dealSeconds">00</div><span>Sec</span></div>
        </div>
        <div style="display:flex;align-items:center;gap:16px;flex-wrap:wrap;margin:12px 0;">
          <span style="font-weight:700;font-size:1.4rem;">$999</span>
          <span style="text-decoration:line-through;color:#5e6f8d;">$1,199</span>
          <span class="badge">-17%</span>
          <span style="background:#f0f4fe;padding:2px 14px;border-radius:40px;font-size:0.85rem;">Only 12 left</span>
        </div>
        <button class="btn btn-accent" id="buyDeal"><i class="fas fa-bolt"></i> Grab now</button>
      </div>
    </div>
  </section>

  <!-- testimonials -->
  <section class="section container">
    <div class="section-header">
      <h2>What our shoppers say</h2>
      <span class="muted">Real reviews</span>
    </div>
    <div class="testimonials" id="testimonials">
      <div class="testimonial">
        <div style="color:#fbbf24;letter-spacing:1px;">★★★★★</div>
        <p style="margin:8px 0;">"Super fast delivery and the quality is top notch. Love the experience!"</p>
        <div style="display:flex;align-items:center;gap:12px;margin-top:10px;">
          <div style="width:40px;height:40px;border-radius:40px;background:#dbeafe;display:grid;place-items:center;font-weight:700;">AM</div>
          <div><strong>Ava Martin</strong><div class="muted" style="font-size:0.8rem;">Verified</div></div>
        </div>
      </div>
      <div class="testimonial">
        <div style="color:#fbbf24;letter-spacing:1px;">★★★★☆</div>
        <p style="margin:8px 0;">"Great selection, easy checkout. I'll be back for more."</p>
        <div style="display:flex;align-items:center;gap:12px;margin-top:10px;">
          <div style="width:40px;height:40px;border-radius:40px;background:#dbeafe;display:grid;place-items:center;font-weight:700;">ML</div>
          <div><strong>Michael Lee</strong><div class="muted" style="font-size:0.8rem;">Frequent buyer</div></div>
        </div>
      </div>
    </div>
  </section>

  <!-- newsletter -->
  <section class="section container">
    <div class="newsletter">
      <div>
        <h3>Stay in the loop</h3>
        <p style="opacity:0.8;">Get exclusive deals and new drops</p>
      </div>
      <form id="newsletterForm" style="display:flex;gap:6px;flex-wrap:wrap;align-items:center;">
        <input type="email" id="newsletterEmail" placeholder="Your email" required />
        <button type="submit" id="subscribeBtn">Subscribe</button>
      </form>
      <div id="newsletterMsg" style="width:100%;margin-top:6px;font-size:0.9rem;display:none;"></div>
    </div>
  </section>
</main>

<footer>
  <div class="container footer-grid">
    <div>
      <strong style="font-size:1.2rem;color:#0a1a2f;">NexusShop</strong>
      <p class="muted" style="max-width:260px;margin-top:6px;">Modern e‑commerce demo, crafted with simplicity.</p>
      <div style="display:flex;gap:12px;margin-top:12px;">
        <button class="icon-btn"><i class="fab fa-facebook"></i></button>
        <button class="icon-btn"><i class="fab fa-twitter"></i></button>
        <button class="icon-btn"><i class="fab fa-instagram"></i></button>
      </div>
    </div>
    <div class="footer-links">
      <div><strong>Company</strong><a href="#">About</a><a href="#">Careers</a><a href="#">Press</a></div>
      <div><strong>Support</strong><a href="#">Help</a><a href="#">Returns</a><a href="#">Contact</a></div>
    </div>
  </div>
  <div class="footer-bottom">© <span id="year"></span> NexusShop. All rights reserved.</div>
</footer>

<script>
  // ----- data -----
  const CATEGORIES = [
    { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
    { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
    { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
    { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
    { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
    { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
  ];

  const PRODUCTS = [
    { id:1, title:'iPhone 14 Pro Max', price:1099, oldPrice:1199, rating:5, img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category:'Smartphones' },
    { id:2, title:'MacBook Pro 14"', price:1999, rating:4, img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category:'Laptops' },
    { id:3, title:'Apple Watch S8', price:349, oldPrice:399, rating:5, badge:'-13%', img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category:'Accessories' },
    { id:4, title:'Nike Air Max 270', price:150, rating:4, img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category:'Footwear' },
    { id:5, title:'Sony A7 IV', price:2499, rating:5, img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category:'Gadgets' },
    { id:6, title:'Chanel No. 5', price:120, rating:5, img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category:'Accessories' },
    { id:7, title:'Travel Backpack', price:79, oldPrice:99, rating:4, img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category:'Accessories' },
    { id:8, title:'Sony WH-1000XM5', price:399, rating:5, img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category:'Gadgets' }
  ];

  // ----- refs -----
  const categoriesGrid = document.getElementById('categoriesGrid');
  const productsGrid = document.getElementById('productsGrid');
  const cartCountEl = document.getElementById('cartCount');
  const searchInput = document.getElementById('searchInput');
  let cartCount = 0;

  // ----- render categories -----
  function renderCategories() {
    categoriesGrid.innerHTML = '';
    CATEGORIES.forEach(c => {
      const el = document.createElement('div');
      el.className = 'cat-card';
      el.innerHTML = `<div class="icon"><i class="fas ${c.icon}"></i></div><h4>${c.name}</h4>`;
      el.addEventListener('click', () => {
        searchInput.value = c.name;
        filterProducts(c.name);
        document.getElementById('productsSection').scrollIntoView({ behavior: 'smooth', block: 'start' });
      });
      categoriesGrid.appendChild(el);
    });
  }

  // ----- render products -----
  function renderProducts(list) {
    productsGrid.innerHTML = '';
    list.forEach(p => {
      const el = document.createElement('div');
      el.className = 'product';
      el.innerHTML = `
        <img src="${p.img}" alt="${p.title}" loading="lazy">
        <div class="product-body">
          <div class="product-title">${p.title}</div>
          <div class="product-cat">${p.category}</div>
          <div class="price-row">
            <span class="price-current">$${p.price.toLocaleString()}</span>
            ${p.oldPrice ? `<span class="price-old">$${p.oldPrice.toLocaleString()}</span>` : ''}
            <span class="rating">${'★'.repeat(Math.round(p.rating))}</span>
          </div>
        </div>
        <div class="product-footer">
          <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
          <button class="wish-btn"><i class="far fa-heart"></i></button>
        </div>
      `;
      productsGrid.appendChild(el);
    });
    document.querySelectorAll('.add-btn').forEach(btn => {
      btn.addEventListener('click', () => {
        const id = Number(btn.dataset.id);
        const product = PRODUCTS.find(x => x.id === id);
        if (!product) return;
        cartCount++;
        cartCountEl.textContent = cartCount;
        btn.innerHTML = '✓ Added';
        btn.style.opacity = '0.7';
        setTimeout(() => { btn.innerHTML = '<i class="fas fa-cart-plus"></i> Add'; btn.style.opacity = '1'; }, 900);
      });
    });
  }

  function filterProducts(query) {
    const q = String(query || '').trim().toLowerCase();
    if (!q) { renderProducts(PRODUCTS); return; }
    const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
    renderProducts(filtered);
  }

  // ----- search -----
  document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
  searchInput.addEventListener('keydown', (e) => { if (e.key === 'Enter') filterProducts(e.target.value); });

  // ----- mobile toggle -----
  document.getElementById('mobileToggle').addEventListener('click', () => {
    const menu = document.getElementById('mobileMenu');
    menu.style.display = menu.style.display === 'none' ? 'block' : 'none';
  });

  // ----- newsletter -----
  document.getElementById('newsletterForm').addEventListener('submit', (e) => {
    e.preventDefault();
    const email = document.getElementById('newsletterEmail').value.trim();
    const msg = document.getElementById('newsletterMsg');
    if (!email || !email.includes('@')) {
      msg.style.display = 'block';
      msg.textContent = 'Please enter a valid email.';
      msg.style.color = '#fbbf24';
      return;
    }
    msg.style.display = 'block';
    msg.textContent = '✅ Subscribed!';
    msg.style.color = '#86efac';
    document.getElementById('newsletterEmail').value = '';
    setTimeout(() => msg.style.display = 'none', 2800);
  });

  // ----- deal timer -----
  (function() {
    const target = new Date(Date.now() + (24 * 60 + 36) * 60 * 1000);
    function tick() {
      const diff = target - new Date();
      if (diff <= 0) return;
      document.getElementById('dealDays').textContent = Math.floor(diff / (24*3600*1000));
      document.getElementById('dealHours').textContent = String(Math.floor((diff % (24*3600*1000))/(3600*1000))).padStart(2,'0');
      document.getElementById('dealMinutes').textContent = String(Math.floor((diff % (3600*1000))/(60*1000
