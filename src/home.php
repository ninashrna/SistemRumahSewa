<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
    <!-- Font Awesome -->
    <script src="https://kit.fontawesome.com/f5914f71ff.js" crossorigin="anonymous"></script>
    
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    
    <!-- FontAwesome -->
    <script src="https://kit.fontawesome.com/f5914f71ff.js" crossorigin="anonymous"></script>

    <!-- MapBox -->
    <link href='https://api.mapbox.com/mapbox-gl-js/v2.3.1/mapbox-gl.css' rel='stylesheet' />
    
    <link rel="stylesheet" href="style_home.css">
    <title>Home</title>

</head>
<body>
    
       <!-- Navbar -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-3 fixed-top">

        <div class="container">

            <a href="#home" class="navbar-brand">MyUni Life</a>
			
            <!--
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navmenu">
                
                <i class="fas fa-bars"></i>

            </button>

            
            <div class="collapse navbar-collapse" id="navmenu">

                <ul class="navbar-nav ms-auto">

                    <li class="nav-item">
                        <a href="#" class="nav-link">Home</a>
                    </li>

                    <li class="nav-item">
                        <a href="#howto" class="nav-link">How To Book</a>
                    </li>

                    <li class="nav-item">
                        <a href="#menu" class="nav-link">Our Service</a>
                    </li>

                    <li class="nav-item">
                        <a href="#about" class="nav-link">About Us</a>
                    </li>

                    <li class="nav-item">
                        <a href="#contact" class="nav-link">Login</a>
                    </li>

                </ul>

            </div>
            -->

        </div>
        
    </nav>
    <!-- End of Navbar -->
    

  <!-- Home -->
    <section id="home" class="home min-vh-100 text-start text-md-center">

        <div class="bg-banner">

            <div class="header container">
            
                <div class="reveal header-text">

                    <h1>Kesenangan Anda,<br> Keutamaan Kami</h1>

                    <p class="lead">Rumah & Kenderaan Sewa</p>

                </div>
				
				
                <a href="login_user.php"><button class="button button1">Get Started</button></a>

            </div>

        </div>
    </section>
    <!-- End of Home -->
	

    
    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <script src='https://api.mapbox.com/mapbox-gl-js/v2.3.1/mapbox-gl.js'></script>

    <script>
        mapboxgl.accessToken = 'pk.eyJ1IjoiaXJmYW5hZGwiLCJhIjoiY2t1c2NvY2d2MnpjaTJwbzZ0enJlcHpmYyJ9.1H1fP9Odbw-V234GbmeDbA';
        var map = new mapboxgl.Map({
            container: 'map',
            style: 'mapbox://styles/mapbox/streets-v11',
            center: [103.122736, 5.314649],
            zoom: 17
        });
    </script>

    <script type="text/javascript">
        window.addEventListener("scroll", function () {
            var navbar = document.querySelector("nav");
            navbar.classList.toggle("sticky", window.scrollY > 0);
        });   
    </script>

    <script>
        window.onload = function revealSection1(){
            var reveals = document.querySelectorAll('.reveal');
            reveals[0].classList.add('active');
            reveals[1].classList.add('active');
        }

        window.addEventListener("scroll", reveal);

        function reveal() {
            var reveals = document.querySelectorAll('.reveal');

            for (var i = 0; i < reveals.length; i++) {
                var windowheight = window.innerHeight;
                var revealtop = reveals[i].getBoundingClientRect().top;
                var revealpoint = 150;

                if (revealtop < windowheight - revealpoint) {
                    reveals[i].classList.add('active');
                }
            }
        }
    </script>

</body>
</html>