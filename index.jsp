<%-- 
    Document   : index
    Created on : 21 Aug, 2025, 10:20:05 PM
    Author     : anany  TELESCOOOOOOOO00000000000000000
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Paws & Claws Care</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <div class="header-content">
            <!-- Left Logo -->
            <h1 class="logo">Paws & Claws Care</h1>

        <!-- Center Search -->
        <div class="search-container">
            <input type="text" id="ngo-search" placeholder="Search for an NGO...">
            <button type="button" onclick="searchNGO()">Search</button>
        </div>
        <!-- Right Controls -->
        <div class="auth-controls">
            <a href="login.jsp" class="btn">Login</a>
            <a href="register.jsp" class="btn">Register</a>
            <a href="contact.jsp" class="btn">Contact</a>
        </div>
        </div>
    </header>

    <main>
        <div class="gallery-container">
            <a href="https://www.peopleforanimalsindia.org/" target="_blank" class="gallery-link">
                <img src="images/img1.jpg" alt="A person tending to a small animal">
                <div class="image-overlay">
                    <h3>People for Animals</h3>
                    <p>One of the largest animal welfare organizations in India.</p>
                    <span class="learn-more-btn">Learn More</span>
                </div>
            </a>
            <a href="https://strayanimalfoundationindia.org/" target="_blank" class="gallery-link">
                <img src="images/img2.png" alt="A person feeding stray puppies">
                <div class="image-overlay">
                    <h3>Stray Animal Foundation</h3>
                    <p>Dedicated to providing care and shelter for stray animals.</p>
                    <span class="learn-more-btn">Learn More</span>
                </div>
            </a>
            <a href="https://www.strawindia.org/" target="_blank" class="gallery-link">
                <img src="images/img3.png" alt="A woman holding a fluffy brown rabbit">
                <div class="image-overlay">
                    <h3>STRAW India</h3>
                    <p>Working to create a compassionate world for animals.</p>
                    <span class="learn-more-btn">Learn More</span>
                </div>
            </a>
            <a href="https://www.fiapo.org/" target="_blank" class="gallery-link">
                <img src="images/img4.png" alt="Two elephants interacting with each other">
                <div class="image-overlay">
                    <h3>FIAPO</h3>
                    <p>Federation of Indian Animal Protection Organisations.</p>
                    <span class="learn-more-btn">Learn More</span>
                </div>
            </a>
            <a href="https://wildlifesos.org/" target="_blank" class="gallery-link">
                <img src="images/img5.png" alt="A person with a hawk on their arm">
                <div class="image-overlay">
                    <h3>Wildlife SOS</h3>
                    <p>Rescuing and rehabilitating wildlife across India.</p>
                    <span class="learn-more-btn">Learn More</span>
                </div>
            </a>
            <a href="https://dakshin.org/" target="_blank" class="gallery-link">
                <img src="images/img6.png" alt="A person with a hawk on their arm">
                <div class="image-overlay">
                    <h3>Dakshin Foundation</h3>
                    <p>Focusing on marine and coastal conservation efforts.</p>
                    <span class="learn-more-btn">Learn More</span>
                </div>
            </a>
        </div>
    </main>

    <footer>
        <p>&copy; 2025 Helping Paws. All Rights Reserved.</p>
    </footer>
</body>
</html>