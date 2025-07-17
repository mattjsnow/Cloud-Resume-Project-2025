# Matt Snow - Personal Website

A clean, minimalist personal website built with HTML and CSS for the Cloud Resume Challenge.

## Features

- Responsive design that works on all devices
- Clean, modern aesthetic matching the original Hugo design
- Easy to customize and deploy
- Static files perfect for S3 hosting

## Files

- `index.html` - Main website content
- `styles.css` - All styling and responsive design
- `README.md` - This file

## Customization

### Update Personal Information
Edit `index.html` to update:
- Your name
- Professional titles
- Skills and keywords
- Social media links
- Email address

### Update Profile Image
Replace the placeholder image URL in `index.html`:
```html
<img src="your-image-url.jpg" alt="Your Name">
```

### Update Colors
Modify `styles.css` to change the color scheme:
- Background: `#f8f9fa`
- Text: `#333`
- Navigation links: `#8b4513`

## Deployment to S3

1. **Create S3 Bucket:**
   - Create a new S3 bucket
   - Enable "Static website hosting"
   - Set index document to `index.html`

2. **Upload Files:**
   - Upload `index.html` and `styles.css` to your S3 bucket
   - Make sure files are publicly readable

3. **Configure Bucket Policy:**
   ```json
   {
       "Version": "2012-10-17",
       "Statement": [
           {
               "Sid": "PublicReadGetObject",
               "Effect": "Allow",
               "Principal": "*",
               "Action": "s3:GetObject",
               "Resource": "arn:aws:s3:::your-bucket-name/*"
           }
       ]
   }
   ```

4. **Access Your Website:**
   - Use the S3 website endpoint: `http://your-bucket-name.s3-website-region.amazonaws.com`
   - Or configure a custom domain with CloudFront

## Local Development

Simply open `index.html` in your web browser to preview the website locally.

## Browser Compatibility

- Chrome/Edge (latest)
- Firefox (latest)
- Safari (latest)
- Mobile browsers

## License

© 2024. Panjim Goa. Some Rights Reserved. 