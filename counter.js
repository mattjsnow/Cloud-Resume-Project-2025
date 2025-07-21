fetch('https://hcazybfiva.execute-api.us-east-1.amazonaws.com/default/visitorcount')
  .then(response => response.json())
  .then(data => {
    const count = data.visitCount;
    const counterElement = document.createElement("div");
    counterElement.textContent = `Visitor count: ${count}`;
    counterElement.style.textAlign = "center";
    counterElement.style.marginTop = "20px";
    counterElement.style.fontWeight = "bold";
    counterElement.style.fontSize = "16px";
    document.body.appendChild(counterElement);
  })
  .catch(error => console.error("Error fetching visitor count:", error));
