<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop · modern e‑commerce</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Plus+Jakarta+Sans:wght@600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body {
      font-family: 'Inter', sans-serif;
      background: #fafcff;
      color: #0b1b33;
      line-height: 1.5;
      padding: 0 0 2rem;
    }
    :root {
      --primary: #0b1b33;
      --accent: #3b82f6;
      --accent-light: #eef4ff;
      --surface: #ffffff;
      --soft: #f3f7fd;
      --muted: #5e6f8d;
      --radius: 20px;
      --shadow: 0 12px 30px -8px rgba(0, 20, 50, 0.08);
      --shadow-hover: 0 24px 48px -12px rgba(0, 20, 50, 0.14);
    }
    a { text-decoration: none; color: inherit; }
    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }
    /* header */
    header {
      background: rgba(255,255,255,0.82);
      backdrop-filter: blur(10px);
      -webkit-backdrop-filter: blur(10px);
      border-bottom: 1px solid rgba(0,0,0,0.02);
      position: sticky;
      top: 0;
      z-index: 50;
      padding: 10px 0;
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 12px;
    }
    .brand {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-weight: 800;
      font-size: 24px;
      letter-spacing: -0.3px;
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .brand span { color: var(--accent); }
    .nav-wrapper {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .main-nav ul {
      display: flex;
      list-style: none;
      gap: 6px;
      align-items: center;
    }
    .main-nav li a {
      padding: 8px 14px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.95rem;
      transition: 0.2s;
      display: flex;
      align-items: center;
      gap: 6px;
      color: #1e2f4a;
    }
    .main-nav li a:hover,
    .main-nav li a.active {
      background: var(--accent-light);
      color: var(--accent);
    }
    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--soft);
      border-radius: 60px;
      padding: 6px 6px 6px 18px;
      gap: 8px;
      min-width: 200px;
      border: 1px solid transparent;
      transition: 0.2s;
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      background: white;
      box-shadow: 0 0 0 4px rgba(59,130,246,0.12);
    }
    .search-wrap input {
      border: none;
      background: transparent;
      outline: none;
      width: 100%;
      font-size: 0.95rem;
      padding: 8px 0;
      color: #0b1b33;
    }
    .search-wrap button {
      background: var(--accent);
      border: none;
      color: white;
      border-radius: 40px;
      padding: 8px 16px;
      font-weight: 600;
      cursor: pointer;
      transition: 0.2s;
      font-size: 0.9rem;
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .search-wrap button:hover { background: #2563eb; }
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
      cursor: pointer;
      transition: 0.2s;
      width: 40px;
      height: 40px;
      border-radius: 40px;
      display: grid;
      place-items: center;
    }
    .icon-btn:hover { background: var(--soft); color: var(--accent); }
    .cart-wrap {
      position: relative;
      display: flex;
      align-items: center;
    }
    .cart-count {
      position: absolute;
      top: -4px;
      right: -4px;
      background: var(--accent);
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
    .mobile-toggle {
      display: none;
      background: transparent;
      border: none;
      font-size: 1.6rem;
      cursor: pointer;
      color: #0b1b33;
    }
    /* hero */
    .hero {
      background: linear-gradient(145deg, #0b1b33 0%, #1a3155 100%);
      border-radius: var(--radius);
      margin: 28px auto 32px;
      padding: 64px 48px;
      color: white;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 30px;
      box-shadow: 0 20px 40px -12px rgba(0,20,40,0.3);
    }
    .hero-content { max-width: 600px; }
    .hero h1 {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-size: 2.8rem;
      font-weight: 800;
      letter-spacing: -0.02em;
      line-height: 1.1;
      margin-bottom: 16px;
    }
    .hero p {
      opacity: 0.8;
      font-size: 1.1rem;
      max-width: 460px;
      margin-bottom: 28px;
    }
    .hero-actions { display: flex; gap: 12px; flex-wrap: wrap; }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      border: none;
      cursor: pointer;
      transition: 0.2s;
      font-size: 1rem;
    }
    .btn-primary {
      background: white;
      color: #0b1b33;
      box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    }
    .btn-primary:hover { transform: scale(1.02); background: #f0f5ff; }
    .btn-outline {
      background: transparent;
      border: 1.5px solid rgba(255,255,255,0.25);
      color: white;
    }
    .btn-outline:hover { background: rgba(255,255,255,0.08); }
    .hero-illustration i { font-size: 4.5rem; opacity: 0.4; }
    /* section */
    .section { padding: 40px 0; }
    .section-header {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 12px;
      margin-bottom: 28px;
    }
    .section-header h2 {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-weight: 700;
      font-size: 1.8rem;
      letter-spacing: -0.3px;
    }
    .section-header .muted { color: var(--muted); font-weight: 400; }
    .grid-categories {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(130px, 1fr));
      gap: 16px;
    }
    .cat-card {
      background: white;
      padding: 20px 10px;
      border-radius: var(--radius);
      text-align: center;
      box-shadow: var(--shadow);
      transition: 0.25s;
      cursor: default;
      border: 1px solid rgba(0,0,0,0.02);
    }
    .cat-card:hover { transform: translateY(-6px); box-shadow: var(--shadow-hover); }
    .cat-card .icon { font-size: 2rem; color: var(--accent); margin-bottom: 8px; }
    .cat-card h4 { font-weight: 600; font-size: 1rem; margin-top: 4px; }
    .grid-products {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(240px, 1fr));
      gap: 24px;
    }
    .product {
      background: white;
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: 0.25s;
      display: flex;
      flex-direction: column;
    }
    .product:hover { transform: translateY(-6px); box-shadow: var(--shadow-hover); }
    .product img {
      width: 100%;
      height: 220px;
      object-fit: cover;
      background: #f0f4fe;
    }
    .product-body { padding: 16px 16px 8px; flex: 1; }
    .product-title {
      font-weight: 600;
      font-size: 1.05rem;
      margin-bottom: 4px;
    }
    .product-category { font-size: 0.8rem; color: var(--muted); text-transform: uppercase; letter-spacing: 0.3px; }
    .price-row {
      display: flex;
      align-items: center;
      gap: 10px;
      margin: 10px 0 6px;
    }
    .price-current { font-weight: 700; font-size: 1.2rem; }
    .price-old { color: var(--muted); text-decoration: line-through; font-size: 0.9rem; }
    .rating { color: #fbbf24; font-size: 0.9rem; letter-spacing: 1px; }
    .product-footer {
      padding: 12px 16px 16px;
      display: flex;
      gap: 8px;
      align-items: center;
    }
    .add-btn {
      flex: 1;
      background: var(--accent);
      color: white;
      border: none;
      border-radius: 40px;
      padding: 10px 12px;
      font-weight: 600;
      cursor: pointer;
      transition: 0.2s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
    }
    .add-btn:hover { background: #2563eb; }
    .wish-btn {
      background: var(--soft);
      border: none;
      width: 42px;
      height: 42px;
      border-radius: 40px;
      cursor: pointer;
      transition: 0.2s;
    }
    .wish-btn:hover { background: #e2eaf9; }
    /* flash deal */
    .deal-card {
      background: white;
      border-radius: var(--radius);
      overflow: hidden;
      display: flex;
      flex-wrap: wrap;
      box-shadow: var(--shadow);
      margin: 12px 0 8px;
    }
    .deal-card img { width: 100%; max-width: 380px; height: 260px; object-fit: cover; }
    .deal-content { padding: 28px 32px; flex: 1; }
    .deal-content h3 { font-size: 1.8rem; font-weight: 700; }
    .timer {
      display: flex;
      gap: 12px;
      margin: 18px 0;
    }
    .time-box {
      background: #0b1b33;
      color: white;
      padding: 8px 12px;
      border-radius: 12px;
      min-width: 64px;
      text-align: center;
    }
    .time-box div:first-child { font-size: 1.5rem; font-weight: 700; }
    .deal-discount { background: #ef4444; color: white; padding: 4px 14px; border-radius: 40px; font-weight: 700; }
    /* testimonials */
    .testimonials {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 20px;
    }
    .testimonial {
      min-width: 280px;
      background: white;
      padding: 22px;
      border-radius: var(--radius);
      box-shadow: var(--shadow);
      flex-shrink: 0;
    }
    /* newsletter */
    .newsletter {
      background: linear-gradient(145deg, #0b1b33, #1f3a60);
      color: white;
      border-radius: var(--radius);
      padding: 48px 32px;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
    }
    .newsletter h3 { font-size: 1.8rem; font-weight: 700; }
    .newsletter form {
      display: flex;
      gap: 10px;
      flex-wrap: wrap;
      background: rgba(255,255,255,0.08);
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
      min-width: 220px;
      outline: none;
    }
    .newsletter input::placeholder { color: rgba(255,255,255,0.6); }
    .newsletter button {
      background: white;
      border: none;
      color: #0b1b33;
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 700;
      cursor: pointer;
      transition: 0.2s;
    }
    .newsletter button:hover { background: #eef4ff; }
    /* footer */
    footer {
      margin-top: 48px;
      padding: 32px 0 16px;
      border-top: 1px solid rgba(0,0,0,0.04);
      color: var(--muted);
    }
    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      gap: 32px;
      justify-content: space-between;
    }
    .footer-links { display: flex; gap: 48px; flex-wrap: wrap; }
    .footer-links div { display: flex; flex-direction: column; gap: 8px; }
    .footer-links strong { color: #0b1b33; }
    .footer-bottom { text-align: center; margin-top: 28px; font-size: 0.9rem; }
    /* responsive */
    @media (max-width: 900px) {
      .main-nav { display: none; }
      .mobile-toggle { display: inline-block; }
      .search-wrap { min-width: 140px; }
      .hero { padding: 40px 24px; }
      .hero h1 { font-size: 2.2rem; }
      .deal-card img { max-width: 100%; }
    }
    @media (max-width: 600px) {
      .header-inner { flex-wrap: wrap; }
      .search-wrap { order: 10; width: 100%; }
      .hero h1 { font-size: 1.8rem; }
      .grid-products { grid-template-columns: 1fr 1fr; }
    }
    @media (max-width: 420px) {
      .grid-products { grid-template-columns: 1fr; }
    }
    /* utilities */
    .muted { color: var(--muted); }
    .text-center { text-align: center; }
  </style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:10px;">
      <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
      <a href="#" class="brand"><i class="fas fa-cube" style="color:var(--accent);"></i> Nexus<span>Shop</span></a>
    </div>

    <nav class="main-nav" id="mainNav">
      <ul>
        <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
      </ul>
    </nav>

    <div style="display:flex;align-items:center;gap:12px;flex-wrap:wrap;">
      <div class="search-wrap">
        <input type="text" id="searchInput" placeholder="Search anything..." aria-label="Search">
        <button id="searchBtn"><i class="fas fa-search"></i> Search</button>
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
  <div id="mobileMenu" style="display:none; background:white; border-top:1px solid #eee; padding:10px 24px;">
    <ul style="list-style:none;display:flex;flex-direction:column;gap:10px;">
      <li><a href="#">Home</a></li>
      <li><a href="#">Categories</a></li>
      <li><a href="#">Trending</a></li>
      <li><a href="#deals">Deals</a></li>
    </ul>
  </div>
</header>

<main>
  <!-- hero -->
  <section class="container hero">
    <div class="hero-content">
      <h1>New arrivals <br>just dropped</h1>
      <p>Discover premium picks curated for you. Fresh styles, tech, and accessories.</p>
      <div class="hero-actions">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
        <button class="btn btn-outline" id="exploreDeals">Explore deals</button>
      </div>
    </div>
    <div class="hero-illustration"><i class="fas fa-shopping-bag"></i></div>
  </section>

  <!-- categories -->
  <section class="section container">
    <div class="section-header">
      <h2>Shop by category</h2>
      <span class="muted">Browse top collections</span>
    </div>
    <div class="grid-categories" id="categoriesGrid"></div>
  </section>

  <!-- products -->
  <section class="section container" id="productsSection">
    <div class="section-header">
      <h2>Trending products</h2>
      <span class="muted">Popular picks</span>
    </div>
    <div class="grid-products" id="productsGrid"></div>
  </section>

  <!-- flash deal -->
  <section class="section container" id="deals">
    <div class="section-header">
      <h2>⚡ Flash sale</h2>
      <span class="muted">Hurry, limited stock</span>
    </div>
    <div class="deal-card">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80" alt="MacBook Air">
      <div class="deal-content">
        <h3>MacBook Air M2</h3>
        <p class="muted">Lightning fast, ultra‑portable.</p>
        <div class="timer" id="dealTimer">
          <div class="time-box"><div id="dealDays">0</div><span>Days</span></div>
          <div class="time-box"><div id="dealHours">00</div><span>Hrs</span></div>
          <div class="time-box"><div id="dealMinutes">00</div><span>Min</span></div>
          <div class="time-box"><div id="dealSeconds">00</div><span>Sec</span></div>
        </div>
        <div style="display:flex;align-items:center;gap:16px;flex-wrap:wrap;">
          <div><span class="price-current">$999</span> <span class="price-old">$1,199</span></div>
          <span class="deal-discount">-17%</span>
          <span style="background:#f0f4fe;padding:4px 14px;border-radius:40px;font-size:0.9rem;">Only 12 left</span>
        </div>
        <button class="btn btn-primary" id="buyDeal" style="margin-top:18px;background:#0b1b33;color:white;"><i class="fas fa-bolt"></i> Buy now</button>
      </div>
    </div>
  </section>

  <!-- testimonials -->
  <section class="section container">
    <div class="section-header">
      <h2>Customer love</h2>
      <span class="muted">Real reviews</span>
    </div>
    <div class="testimonials" id="testimonials">
      <div class="testimonial">
        <div class="rating">★★★★★</div>
        <p style="margin:8px 0;">"Smooth experience, fast delivery. The quality exceeded my expectations."</p>
        <div style="display:flex;align-items:center;gap:12px;margin-top:10px;">
          <div style="width:40px;height:40px;border-radius:40px;background:#dbeafe;display:grid;place-items:center;font-weight:700;">AM</div>
          <div><strong>Ava Martin</strong><div class="muted" style="font-size:0.8rem;">Verified buyer</div></div>
        </div>
      </div>
      <div class="testimonial">
        <div class="rating">★★★★☆</div>
        <p style="margin:8px 0;">"Great selection and the checkout was super smooth. Will definitely order again."</p>
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
        <p style="opacity:0.8;">Get exclusive offers & new arrivals</p>
      </div>
      <form id="newsletterForm" style="display:flex;gap:6px;flex-wrap:wrap;align-items:center;">
        <input type="email" id="newsletterEmail" placeholder="Enter your email" required>
        <button type="submit" id="subscribeBtn">Subscribe</button>
      </form>
      <div id="newsletterMsg" style="width:100%;margin-top:6px;font-size:0.9rem;display:none;"></div>
    </div>
  </section>
</main>

<footer>
  <div class="container footer-grid">
    <div>
      <strong style="font-size:1.2rem;color:#0b1b33;">NexusShop</strong>
      <p class="muted" style="max-width:280px;margin-top:8px;">Modern e‑commerce demo built with care.</p>
      <div style="display:flex;gap:12px;margin-top:12px;">
        <button class="icon-btn"><i class="fab fa-facebook"></i></button>
        <button class="icon-btn"><i class="fab fa-twitter"></i></button>
        <button class="icon-btn"><i class="fab fa-instagram"></i></button>
      </div>
    </div>
    <div class="footer-links">
      <div><strong>Company</strong><a href="#">About</a><a href="#">Careers</a><a href="#">Press</a></div>
      <div><strong>Support</strong><a href="#">Help Center</a><a href="#">Returns</a><a href="#">Contact</a></div>
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
    { id:1, title:'iPhone 14 Pro Max', price:1099, oldPrice:1199, rating:5, reviews:128, img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category:'Smartphones' },
    { id:2, title:'MacBook Pro 14"', price:1999, rating:4, reviews:86, img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category:'Laptops' },
    { id:3, title:'Apple Watch S8', price:349, oldPrice:399, rating:5, reviews:214, badge:'-13%', img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category:'Accessories' },
    { id:4, title:'Nike Air Max 270', price:150, rating:4, reviews:53, img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category:'Footwear' },
    { id:5, title:'Sony A7 IV', price:2499, rating:5, reviews:42, img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category:'Gadgets' },
    { id:6, title:'Chanel No. 5', price:120, rating:5, reviews:189, img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category:'Accessories' },
    { id:7, title:'Travel Backpack', price:79, oldPrice:99, rating:4, reviews:67, img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category:'Accessories' },
    { id:8, title:'Sony WH-1000XM5', price:399, rating:5, reviews:156, img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category:'Gadgets' }
  ];

  // ----- render -----
  const categoriesGrid = document.getElementById('categoriesGrid');
  const productsGrid = document.getElementById('productsGrid');
  const cartCountEl = document.getElementById('cartCount');
  const searchInput = document.getElementById('searchInput');
  let cartCount = 0;

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

  function renderProducts(list) {
    productsGrid.innerHTML = '';
    list.forEach(p => {
      const el = document.createElement('div');
      el.className = 'product';
      el.innerHTML = `
        <img src="${p.img}" alt="${p.title}" loading="lazy">
        <div class="product-body">
          <div class="product-title">${p.title}</div>
          <div class="product-category">${p.category}</div>
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
      document.getElementById('dealMinutes').textContent = String(Math.floor((diff % (3600*1000))/(60*1000))).padStart(2,'0');
      document.getElementById('dealSeconds').textContent = String(Math.floor((diff % (60*1000))/1000)).padStart(2,'0');
    }
    tick();
    setInterval(tick, 1000);
  })();

  // ----- buy deal -----
  document.getElementById('buyDeal').addEventListener('click', () => {
    cartCount++;
    cartCountEl.textContent = cartCount;
    alert('MacBook Air added to cart (demo).');
  });

  // ----- hero buttons -----
  document.getElementById('shopNow').addEventListener('click', () => document.getElementById('productsSection').scrollIntoView({ behavior: 'smooth' }));
  document.getElementById('exploreDeals').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));

  // ----- init -----
  renderCategories();
  renderProducts(PRODUCTS);
  document
