# troubleshooting

## Failed build, error, except, ...etc

* docker build

```shell
4.249 > Build failed because of webpack errors
------

 1 warning found (use docker --debug to expand):
 - JSONArgsRecommended: JSON arguments recommended for CMD to prevent unintended behavior related to OS signals (line 12)
Dockerfile.dev:10
--------------------
   8 |     COPY . .
   9 |     ENV NODE_PATH=./build
  10 | >>> RUN npm run build
  11 |     EXPOSE 3000
  12 |     CMD npm run dev
--------------------
ERROR: failed to solve: process "/bin/sh -c npm run build" did not complete successfully: exit code: 1
```

```shell
 3 warnings found (use docker --debug to expand):
 - JSONArgsRecommended: JSON arguments recommended for CMD to prevent unintended behavior related to OS signals (line 10)
 - MultipleInstructionsDisallowed: Multiple CMD instructions should not be used in the same stage because only the last one will be used (line 10)
 - JSONArgsRecommended: JSON arguments recommended for CMD to prevent unintended behavior related to OS signals (line 12)
```

```shell
4.219  ⚠ Mismatching @next/swc version, detected: 15.5.4 while Next.js is on 15.1.6. Please ensure these match
4.220 
4.220 > Build failed because of webpack errors
------
Dockerfile.dev:10
--------------------
   8 |     COPY . .
   9 |     ENV NODE_PATH=./build
  10 | >>> RUN npm run build
  11 |     EXPOSE 3000
  12 |     CMD ["npm", "run", "dev"]
--------------------
ERROR: failed to solve: process "/bin/sh -c npm run build" did not complete successfully: exit code: 1
```

* Update package.json check scripts/localhost_dev.sh