<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8" />
  <title>Moody Intro with Socials & Music</title>
  <style>
    /* Reset */
    * {
      margin: 0; padding: 0; box-sizing: border-box;
    }
    html, body {
      height: 100%;
      background:
        url('https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=1470&q=80') center/cover no-repeat fixed,
        radial-gradient(circle at center, #121212 0%, #000 80%);
      color: #ccc;
      font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
      overflow: hidden;
      display: flex;
      justify-content: center;
      align-items: center;
      flex-direction: column;
      user-select: none;
      position: relative;
    }

    /* Fog effect */
    .fog {
      position: fixed;
      top: -20%;
      left: -20%;
      width: 140vw;
      height: 140vh;
      pointer-events: none;
      z-index: 0;
      background:
        radial-gradient(circle at 25% 25%, rgba(200, 200, 200, 0.1), transparent 60%),
        radial-gradient(circle at 75% 40%, rgba(180, 180, 180, 0.15), transparent 60%),
        radial-gradient(circle at 50% 70%, rgba(220, 220, 220, 0.12), transparent 60%);
      animation: fogMove 60s linear infinite;
      filter: blur(20px);
      opacity: 0.5;
    }

    @keyframes fogMove {
      0% {
        background-position:
          0% 0%,
          0% 0%,
          0% 0%;
      }
      100% {
        background-position:
          100% 20%,
          100% 10%,
          100% 50%;
      }
    }

    /* Main content */
    .content {
      position: relative;
      z-index: 1;
      text-align: center;
      max-width: 600px;
      padding: 0 1rem;
    }

    /* Profile picture */
    .profile-pic {
      width: 120px;
      height: 120px;
      border-radius: 50%;
      object-fit: cover;
      border: 3px solid rgba(255 255 255 / 0.3);
      margin: 0 auto 2rem;
      box-shadow: 0 0 15px rgba(255 255 255, 0.2);
    }

    h1 {
      font-size: 5rem;
      font-weight: 300;
      color: #ddd;
      text-shadow:
        0 0 10px rgba(255,255,255,0.1),
        0 0 20px rgba(255,255,255,0.05);
      margin-bottom: 2rem;
      letter-spacing: 0.1em;
      user-select: none;
    }

    /* Buttons */
    .buttons {
      display: flex;
      gap: 2rem;
      justify-content: center;
      margin-bottom: 2rem;
    }

    button {
      background: rgba(255 255 255 / 0.1);
      border: 1.5px solid rgba(255 255 255 / 0.3);
      color: #ccc;
      padding: 1rem 2.5rem;
      font-size: 1.2rem;
      font-weight: 300;
      border-radius: 8px;
      cursor: pointer;
      backdrop-filter: blur(10px);
      transition:
        background-color 0.3s ease,
        border-color 0.3s ease,
        color 0.3s ease;
      user-select: none;
    }

    button:hover {
      background: rgba(255 255 255 / 0.25);
      border-color: rgba(255 255 255 / 0.7);
      color: white;
    }

    /* Socials container */
    .socials {
      display: flex;
      justify-content: center;
      gap: 30px;
      margin-top: 1rem;
    }
    .socials a {
      color: #ccc;
      font-size: 2.2rem;
      transition: color 0.3s ease;
      user-select: none;
    }
    .socials a:hover {
      color: #1db954; /* Spotify green for example */
    }

    /* Responsive scaling */
    @media (max-width: 600px) {
      h1 {
        font-size: 3rem;
      }
      button {
        padding: 0.8rem 1.5rem;
        font-size: 1rem;
      }
      .profile-pic {
        width: 80px;
        height: 80px;
        margin-bottom: 1.5rem;
      }
      .socials a {
        font-size: 1.8rem;
        gap: 20px;
      }
    }
  </style>

  <!-- Load font awesome for social icons -->
  <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</head>
<body>
  <div class="fog"></div>

  <div class="content">
    <!-- Profile picture -->
    <img class="profile-pic" src="https://i.pravatar.cc/150" alt="Profile Picture" />

    <h1>GUNS.LOL</h1>

    <div class="buttons">
      <button>Play Now</button>
      <button>How to Play</button>
      <button>Settings</button>
    </div>

    <!-- Social icons -->
    <div class="socials">
      <a href="https://www.tiktok.com/@yourusername" target="_blank" aria-label="TikTok"><i class="fab fa-tiktok"></i></a>
      <a href="https://open.spotify.com/user/yourusername" target="_blank" aria-label="Spotify"><i class="fab fa-spotify"></i></a>
      <a href="https://twitter.com/yourusername" target="_blank" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
      <a href="https://instagram.com/yourusername" target="_blank" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
    </div>
  </div>

  <!-- Background music -->
  <audio autoplay loop muted id="bg-music" src="https://cdn.pixabay.com/download/audio/2022/03/25/audio_ef2a866f0f.mp3?filename=smooth-chill-electronic-ambient-11292.mp3"></audio>

  <script>
    // Optional: Toggle mute on click anywhere
    const music = document.getElementById('bg-music');
    document.body.addEventListener('click', () => {
      music.muted = !music.muted;
      alert(music.muted ? "Music muted" : "Music unmuted");
    });
  </script>
</body>
</html>
