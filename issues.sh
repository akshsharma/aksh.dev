#!/bin/bash

REPO="yourusername/your-repo-name"

declare -A milestones=(
  ["📦 Phase 1: Planning & Setup"]="Define project scope and architecture"
  ["🎨 Phase 2: Frontend Development"]="Build UI and static routes using SvelteKit and Tailwind"
  ["🔐 Phase 3: Backend, Auth, and Admin"]="Implement backend logic, authentication, and admin dashboard"
  ["📬 Phase 4: APIs & External Integrations"]="Build contact form, external API demos"
  ["🛡️ Phase 5: Security & Hardening"]="Secure the app with headers, validation, and secrets"
  ["🚀 Phase 6: Deployment & CI/CD"]="Deploy to Vercel and set up CI/CD workflows"
  ["🧼 Phase 7: Polish & Maintenance"]="Finalize docs, analytics, testing, and update workflows"
)

declare -A label_map=(
  ["content"]="frontend"
  ["layout"]="frontend"
  ["tailwind"]="frontend"
  ["markdown"]="content"
  ["CMS"]="content"
  ["auth"]="auth"
  ["JWT"]="auth"
  ["admin"]="admin"
  ["API"]="api"
  ["email"]="api"
  ["SendGrid"]="api"
  ["SMTP"]="api"
  ["headers"]="security"
  ["CSP"]="security"
  ["HSTS"]="security"
  ["SSL"]="security"
  ["Supabase"]="backend"
  ["SQLite"]="backend"
  ["database"]="backend"
  ["CI/CD"]="deployment"
  ["Vercel"]="deployment"
  ["GitHub Actions"]="deployment"
  ["analytics"]="maintenance"
  ["documentation"]="maintenance"
)

declare -A milestone_ids

echo "🔧 Creating milestones..."
for name in "${!milestones[@]}"; do
  id=$(gh api repos/"$REPO"/milestones \
    -f title="$name" \
    -f description="${milestones[$name]}" \
    -f state=open \
    --jq '.number')
  milestone_ids["$name"]=$id
  echo "  ➕ $name (ID: $id)"
done

echo ""
echo "📝 Creating issues and assigning to milestones..."

current_milestone=""
while IFS= read -r line; do
  if [[ "$line" == \#* ]]; then continue; fi
  if [[ "$line" == *::* ]]; then
    phase="${line%%::*}"
    title="${line##*::}"
    current_milestone="$phase"
  else
    title="${line#::}"
  fi

  # Determine labels
  lower_title=$(echo "$title" | tr '[:upper:]' '[:lower:]')
  labels="project"
  for keyword in "${!label_map[@]}"; do
    if [[ "$lower_title" == *"${keyword,,}"* ]]; then
      labels+=",${label_map[$keyword]}"
    fi
  done

  # Create issue
  echo "  🟡 $title → Milestone: $current_milestone, Labels: $labels"
  gh issue create \
    --repo "$REPO" \
    --title "$title" \
    --label "$labels" \
    --milestone "${milestone_ids[$current_milestone]}" \
    --body "" > /dev/null

  sleep 1
done <<EOF
📦 Phase 1: Planning & Setup::Define all pages and content (Home, About, Projects, Blog, Contact, Admin)
::Identify static vs dynamic content
::Select backend: Supabase or SQLite
::Select email service: SendGrid, SMTP, etc.
::Choose deployment platform: Vercel or Cloudflare
::Design overall project architecture
::Sketch out route structure and folder organization
::Decide on authentication method (Supabase Auth or custom JWT)
::Create GitHub repository
::Write README with tech stack and goals
🎨 Phase 2: Frontend Development::Initialize SvelteKit project with TypeScript
::Set up Tailwind CSS and configure themes
::Create global layout and navigation
::Build Home, About, Projects, Blog, and Contact pages
::Design responsive layout for desktop/mobile
::Set up markdown or CMS for blog/posts
::Implement rendering logic for blog/project content
🔐 Phase 3: Backend, Auth, and Admin::Set up database schema (projects, blog, users)
::Configure Supabase/SQLite for local and production use
::Set up authentication logic
::Build login and logout flows
::Implement route protection using layout guards
::Restrict access to /admin pages
::Build out the admin dashboard UI
::Add CRUD features for blog and project entries
📬 Phase 4: APIs & External Integrations::Build contact form page and UI
::Create server API for contact form submission
::Integrate email sending via chosen provider
::Add optional external API demo
::Proxy external APIs via server routes
::Cache or rate limit external API results
🛡️ Phase 5: Security & Hardening::Configure CSP, Referrer Policy, HSTS, and other headers
::Validate and sanitize all form inputs
::Securely store secrets in .env and on deployment platform
::Enforce HTTPS and secure redirects
🚀 Phase 6: Deployment & CI/CD::Deploy frontend + backend to Vercel or Cloudflare
::Configure custom domain and SSL
::Set up CI with GitHub Actions
::Add deployment previews for pull requests
::Test production site
🧼 Phase 7: Polish & Maintenance::Add basic analytics
::Write documentation
::Define process for updating blog/projects
::Final testing for accessibility and performance
::Optional: GitHub webhook to auto-redeploy
EOF

echo ""
echo "✅ All issues created with milestones and labels!"
