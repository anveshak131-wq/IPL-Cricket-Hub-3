# Bitbucket Push Instructions

## Current Status
- ✅ Bitbucket remote configured: `bitbucket → https://bitbucket.org/ipl-cricket-hub/ipl.git`
- ✅ All 67 files ready to push
- ⚠️ Authentication needs to be done manually

## Step-by-Step Push Instructions

### Option 1: Interactive Push (Recommended)

1. Open terminal
2. Navigate to project:
   ```bash
   cd /Users/anvesh/Downloads/ipl2020
   ```

3. Push with interactive prompt:
   ```bash
   git push bitbucket main
   ```

4. When prompted:
   - **Username**: `iplcrickethub-admin`
   - **Password**: Paste your **API Token** (not your account password)
     - Token: `ATATT3xFfGF0jzVfBw9xUYj6MHT5fIquNwWS-cQW1TrJ1qP_1BdgQLjT84Pnhw5k6MsOFSpVz5aLc1dpJgeJ83Ah9F6LHTQLNRkkHUz1L6gthJtAhD2dsB5Yq2uPLZ7kdMaXfLKoV4uq74l0iNUM11imd32ckyfRdqmwKpJdBDqxy6Y5pu3Xl0E=CB1DC6FB`

### Option 2: Use API Token Directly

```bash
cd /Users/anvesh/Downloads/ipl2020
git push https://iplcrickethub-admin:ATATT3xFfGF0jzVfBw9xUYj6MHT5fIquNwWS-cQW1TrJ1qP_1BdgQLjT84Pnhw5k6MsOFSpVz5aLc1dpJgeJ83Ah9F6LHTQLNRkkHUz1L6gthJtAhD2dsB5Yq2uPLZ7kdMaXfLKoV4uq74l0iNUM11imd32ckyfRdqmwKpJdBDqxy6Y5pu3Xl0E=CB1DC6FB@bitbucket.org/ipl-cricket-hub/ipl.git main
```

### Option 3: Verify API Token First

1. Check if token has correct permissions:
   - Go to: https://bitbucket.org/account/settings/api-tokens/
   - Verify token has **"Repositories: Write"** permission

2. If token is wrong, create a new one:
   - Delete old token
   - Create new token with **"Repositories: Write"** permission
   - Copy new token and try again

## Troubleshooting

### If authentication still fails:

1. **Verify API token permissions**:
   - Must have "Repositories: Write"
   - Go to: https://bitbucket.org/account/settings/api-tokens/

2. **Verify repository exists**:
   - Check: https://bitbucket.org/ipl-cricket-hub/ipl
   - Make sure you have access

3. **Verify username**:
   - Should be: `iplcrickethub-admin`
   - This must match the account that created the API token

4. **Try creating new API token**:
   - Sometimes tokens need to be regenerated

## What Will Be Pushed

All 67 tracked files including:
- HTML pages (index, fixtures, points, team pages, admin pages)
- CSS stylesheets (14 files in `/css`)
- JavaScript files (10 files in `/js`)
- Assets (team logos, favicon in `/assets`)
- Backend files (`/backend` directory)
- Configuration files (netlify.toml, vercel.json, .gitignore)
- Documentation files (README, various .md files)

Latest commit: `8216306 Fix: Remove deprecated builds field from vercel.json`

## After Push

Your repository will be available at:
- **URL**: https://bitbucket.org/ipl-cricket-hub/ipl
- All files will be in the `main` branch

