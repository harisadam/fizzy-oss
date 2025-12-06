# Fizzy::Oss
This is a Rails engine for self-hosting Fizzy on your own infrastucture.

### Signup only active for the first user

![Disabled signup](screenshot-2025-12-06_16-42-07.png "Disabled signup")

### Outbound Emails

Configure email delivery in production using environment variables:

**Delivery Method:**
- `MAILER_DELIVERY_METHOD` - Set to `smtp` or `sendmail` (default)

**SMTP Settings** (for external mail servers):
- `SMTP_ADDRESS` - SMTP server address (default: `localhost`)
- `SMTP_PORT` - SMTP server port (default: `587`)
- `SMTP_DOMAIN` - Your domain name
- `SMTP_USERNAME` - SMTP authentication username
- `SMTP_PASSWORD` - SMTP authentication password
- `SMTP_AUTHENTICATION` - Authentication type (default: `plain`)
- `SMTP_ENABLE_STARTTLS_AUTO` - Enable STARTTLS (default: `true`)

**Sendmail Settings** (for local mail transfer agent):
- `SENDMAIL_LOCATION` - Path to sendmail binary (default: `/usr/sbin/sendmail`)
- `SENDMAIL_ARGUMENTS` - Command-line arguments (default: `-i`)

