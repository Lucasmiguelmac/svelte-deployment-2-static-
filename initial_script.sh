echo '#!/bin/bash' > .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit
echo 'docker-compose up -d' >> .git/hooks/pre-commit
echo 'docker exec -i svelte_template npm run test' >> .git/hooks/pre-commit

