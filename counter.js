fetch('https://hcazybfiva.execute-api.us-east-1.amazonaws.com/default/visitorcount')
  .then(response => response.json())
  .then(data => {
    const count = data.visitCount;
    const counterElement = document.getElementById("visitor-counter");
    if (counterElement) {
      counterElement.textContent = `Visitor count: ${count}`;
      counterElement.style.textAlign = "center";
      counterElement.style.fontWeight = "bold";
      counterElement.style.fontSize = "16px";
    } else {
      // fallback: append to body if placeholder is missing
      const fallbackDiv = document.createElement("div");
      fallbackDiv.textContent = `Visitor count: ${count}`;
      fallbackDiv.style.textAlign = "center";
      fallbackDiv.style.marginTop = "20px";
      fallbackDiv.style.fontWeight = "bold";
      fallbackDiv.style.fontSize = "16px";
      document.body.appendChild(fallbackDiv);
    }
  })
  .catch(error => {
    const counterElement = document.getElementById("visitor-counter");
    if (counterElement) {
      counterElement.textContent = "Visitor count unavailable";
      counterElement.style.textAlign = "center";
      counterElement.style.color = "red";
      counterElement.style.fontWeight = "bold";
      counterElement.style.fontSize = "16px";
    }
    console.error("Error fetching visitor count:", error);
  });
