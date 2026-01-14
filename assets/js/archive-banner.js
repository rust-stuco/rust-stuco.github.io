// Archive banner functionality
document.addEventListener("DOMContentLoaded", function () {
  const banner = document.getElementById("archive-banner");
  const dismissButton = document.getElementById("dismiss-banner");

  // Check if the banner has been dismissed before
  const bannerDismissed = localStorage.getItem("archiveBannerDismissed");

  if (!bannerDismissed && banner) {
    // Show the banner if it hasn't been dismissed
    banner.classList.remove("hidden");
  }

  // Add click event to dismiss button
  if (dismissButton) {
    dismissButton.addEventListener("click", function () {
      if (banner) {
        banner.classList.add("hidden");
        // Store the dismissal in localStorage so it stays dismissed
        localStorage.setItem("archiveBannerDismissed", "true");
      }
    });
  }
});
